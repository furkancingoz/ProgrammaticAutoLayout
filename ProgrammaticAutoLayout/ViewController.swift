//
//  ViewController.swift
//  ProgrammaticAutoLayout
//
//  Created by Furkan Cingöz on 15.01.2024.
//
import SwiftUI
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    self.view.backgroundColor = .systemCyan


  }




}









#Preview {
  ViewControllerViewRepresentable()
}
struct ViewControllerViewRepresentable: UIViewControllerRepresentable {
  func makeUIViewController(context: Context) -> ViewController {

    return ViewController()
  }

  func updateUIViewController(_ uiViewController: ViewController, context: Context) {

  }
}
