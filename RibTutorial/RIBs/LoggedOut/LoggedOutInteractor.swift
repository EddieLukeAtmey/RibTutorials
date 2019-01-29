//
//  LoggedOutInteractor.swift
//  RibTutorial01
//
//  Created by Eddie on 1/29/19.
//

import RIBs
import RxSwift

protocol LoggedOutRouting: ViewableRouting {
    // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}

protocol LoggedOutPresentable: Presentable {
    var listener: LoggedOutPresentableListener? { get set }
    // TODO: Declare methods the interactor can invoke the presenter to present data.
}

protocol LoggedOutListener: class {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}

final class LoggedOutInteractor: PresentableInteractor<LoggedOutPresentable>, LoggedOutInteractable, LoggedOutPresentableListener {

    weak var router: LoggedOutRouting?
    weak var listener: LoggedOutListener?

    // TODO: Add additional dependencies to constructor. Do not perform any logic
    // in constructor.
    override init(presenter: LoggedOutPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    func performLogin(p1Name: String?, p2Name: String?) {

        let p1Name = makePlayerName(p1Name, withDefault: "Player 1")
        let p2Name = makePlayerName(p2Name, withDefault: "Player 2")
        print("Login p1: \(p1Name), p2: \(p2Name)")
    }

    private func makePlayerName(_ name: String?, withDefault default: String) -> String {
        guard let name = name, name.es_hasData else { return `default` }

        return name
    }
}
