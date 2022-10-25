//
//  ViewController.swift
//  Cocoa Pr L86 NSFilePromiseReceiver
//
//  Created by Michele Galvagno on 22/10/22.
//

import Cocoa

class ViewController: NSViewController {
    var imageDropView: ImageDropView {
        self.view as! ImageDropView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageDropView.registerForDraggedTypes(NSFilePromiseReceiver.readableDraggedTypes.map { NSPasteboard.PasteboardType($0) })
        imageDropView.registerForDraggedTypes([.fileURL])
    }
    
    private lazy var workQueue: OperationQueue = {
        let queue = OperationQueue()
        queue.qualityOfService = .userInitiated
        
        return queue
    }()
    
    private lazy var destinationURL: URL = {
        let destinationURL = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("Lesson86ImageFolder")
        try? FileManager.default.createDirectory(at: destinationURL, withIntermediateDirectories: true, attributes: nil)
        
        return destinationURL
    }()
    
    private func handleFile(at url: URL) {
        let image = NSImage(contentsOf: url)
        DispatchQueue.main.async {
            self.imageDropView.image = image
        }
    }
}

extension ViewController: ImageDropViewDelegate {
    func dragginEntered(forImageDropView imageDropView: ImageDropView, sender: NSDraggingInfo) -> NSDragOperation {
        // Add filtering here: handle the expectation
        var isValid = false
        enumerate(draggingInfo: sender) { draggingInfo, _, stop in
            isValid = true
            stop.pointee = true
        }
        
        return isValid ? sender.draggingSourceOperationMask.intersection([.copy]) : []
    }
    
    func performDragOperation(forImageDropView imageDropView: ImageDropView, sender: NSDraggingInfo) -> Bool {
        // Perform image drop handling
        enumerate(draggingInfo: sender) { dragginItem, _, _ in
            switch dragginItem.item {
            case let filePromiseReceiver as NSFilePromiseReceiver: filePromiseReceiver.receivePromisedFiles(atDestination: self.destinationURL, operationQueue: self.workQueue) { url, error in
                if let error = error {
                    print("Hey we have an error: \(error)")
                } else {
                    self.handleFile(at: url)
                }
            }
            case let fileURL as URL: self.handleFile(at: fileURL)
            default: break
            }
        }
        
        return true
    }
    
    private func enumerate(draggingInfo: NSDraggingInfo, using block: @escaping (NSDraggingItem, Int, UnsafeMutablePointer<ObjCBool>) -> Void) {
        let supportedClasses = [
            NSFilePromiseReceiver.self,
            NSURL.self
        ]
        
        let searchOptions: [NSPasteboard.ReadingOptionKey: Any] = [
            .urlReadingFileURLsOnly: true,
            .urlReadingContentsConformToTypes: [kUTTypeImage]
        ]
        
        draggingInfo.enumerateDraggingItems(for: nil, classes: supportedClasses, searchOptions: searchOptions) { (draggingItem, index, stop) in
            block(draggingItem, index, stop)
        }
    }
    
    func pasteboardWriter(forImageDropView imageDropView: ImageDropView) -> NSPasteboardWriting {
        let provider = NSFilePromiseProvider(fileType: kUTTypeJPEG as String, delegate: self)
        provider.userInfo = imageDropView.image
        
        return provider
    }
}

extension ViewController: NSFilePromiseProviderDelegate {
    func filePromiseProvider(_ filePromiseProvider: NSFilePromiseProvider, fileNameForType fileType: String) -> String {
        return "B&WImage.jpg"
    }
    
    func operationQueue(for filePromiseProvider: NSFilePromiseProvider) -> OperationQueue {
        return workQueue
    }
    
    func filePromiseProvider(_ filePromiseProvider: NSFilePromiseProvider, writePromiseTo url: URL, completionHandler: @escaping (Error?) -> Void) {
        do {
            if let image = filePromiseProvider.userInfo as? NSImage {
                try writeBlackAndWhite(image: image, to: url)
            } else {
                throw ImageError.invalidImage
            }
            completionHandler(nil)
        } catch {
            completionHandler(error)
        }
    }
}

enum ImageError: Error {
    case invalidImage
}

func writeBlackAndWhite(image: NSImage, to url: URL) throws {
    guard let tiffData = image.tiffRepresentation, let imageRep = NSBitmapImageRep(data: tiffData), let ciImage = CIImage(bitmapImageRep: imageRep) else {
        throw ImageError.invalidImage
    }
    
    let bwFilter = CIFilter(name: "CIColorControls")!
    bwFilter.setValuesForKeys([kCIInputImageKey:ciImage, kCIInputBrightnessKey:NSNumber(value: 0.0), kCIInputContrastKey:NSNumber(value: 1.1), kCIInputSaturationKey:NSNumber(value: 0.0)])
    let bwFilterOutput = (bwFilter.outputImage)!
    
    let exposureFilter = CIFilter(name: "CIExposureAdjust")!
    exposureFilter.setValuesForKeys([kCIInputImageKey:bwFilterOutput, kCIInputEVKey:NSNumber(value: 0.7)])
    let exposureFilterOutput = (exposureFilter.outputImage)!
    
    let context = CIContext(options: nil)

    try context.writeJPEGRepresentation(of: exposureFilterOutput, to: url, colorSpace: CGColorSpace(name: CGColorSpace.sRGB)!, options: [kCGImageDestinationLossyCompressionQuality as CIImageRepresentationOption: 1.0])
}
