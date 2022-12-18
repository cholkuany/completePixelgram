//
//  ImagePicker.swift
//  InstaFilter
//
//  Created by admin on 8/26/22.
//



//
//  PhotoPicker.swift
//  Pixelgram
//
//  Created by M_2217299 on 2022-08-30.
//

import Foundation
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable{
   
    @Binding var inputImage: UIImage?
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.allowsEditing = true
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(imagePicker: self)
    }
  
    final class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
        
        let imagePicker: ImagePicker
        init(imagePicker: ImagePicker){
            self.imagePicker = imagePicker
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            if let image = info[.editedImage] as? UIImage{
                imagePicker.inputImage = image
            }else{
                //alert error
            }
            picker.dismiss(animated: true)
        }
    }
}















































//import PhotosUI
//import SwiftUI
//
//struct ImagePicker: UIViewControllerRepresentable{
//    @Binding var image: UIImage?
//
//    class Coordinator: NSObject, PHPickerViewControllerDelegate {
//        var parent: ImagePicker
//        init(_ parent: ImagePicker){
//            self.parent = parent
//        }
//
//        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
//            picker.dismiss(animated: true)
//
//            guard let provider = results.first?.itemProvider else {return}
//
//            if provider.canLoadObject(ofClass: UIImage.self){
//                provider.loadObject(ofClass: UIImage.self) { image, _ in
//                    self.parent.image = image as? UIImage
//                }
//            }
//        }
//    }
//
//    func makeUIViewController(context: Context) -> PHPickerViewController {
//        var config = PHPickerConfiguration()
//        config.filter = .images
//
//        let picker = PHPickerViewController(configuration: config)
//        picker.delegate = context.coordinator
//        return picker
//    }
//
//    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {
//
//    }
//
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//}
