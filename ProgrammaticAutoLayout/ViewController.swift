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


    let button = UIButton()
    //    button.backgroundColor = .systemRed
    button.setTitle("Button", for: .normal)
    self.view.addSubview(button)
    self.view.backgroundColor = .systemCyan
    button.translatesAutoresizingMaskIntoConstraints = false


    button.addTarget(self, action: #selector(secondVC), for: .touchUpInside)

    NSLayoutConstraint.activate([

      button.topAnchor.constraint(equalTo: self.view.topAnchor,constant:  60),
      button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,constant: -60),
      button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
      button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),

    ])
  }
  @objc func secondVC() {
    print("tapped")
    let vc = SecondViewController()
//    self.present(vc, animated: true)
    self.navigationController?.pushViewController(vc, animated: true)
  }
}
//MARK: - 1.
//    NSLayoutConstraint.activate([
//      button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//      button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
//      button.heightAnchor.constraint(equalToConstant: 44),
//      button.widthAnchor.constraint(equalToConstant: 120)
//    ])











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
