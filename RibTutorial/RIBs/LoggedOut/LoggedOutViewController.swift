//
//  LoggedOutViewController.swift
//  RibTutorial01
//
//  Created by Eddie on 1/29/19.
//

import RIBs
import RxSwift
import UIKit

protocol LoggedOutPresentableListener: class {

    /// Login with players' name
    ///
    /// - Parameters:
    ///   - p1Name: player 1
    ///   - p2Name: player 2
    func performLogin(p1Name: String?, p2Name: String?)
}

final class LoggedOutViewController: UIViewController, LoggedOutPresentable, LoggedOutViewControllable {

    // RIBs
    weak var listener: LoggedOutPresentableListener?

    // VCs
    @IBOutlet private weak var tfPlayer1: UITextField?
    @IBOutlet private weak var tfPlayer2: UITextField?
    @IBOutlet private weak var btnLogin: UIButton?

    @IBAction private func performLogin() {
        listener?.performLogin(p1Name: tfPlayer1?.text, p2Name: tfPlayer2?.text)
    }
}
