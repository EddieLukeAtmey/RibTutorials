//
//  AppComponent.swift
//  RibTutorial01
//
//  Created by Eddie on 1/29/19.
//

import RIBs

final class AppComponent: Component<EmptyDependency>, RootDependency {

    init() {
        super.init(dependency: EmptyComponent())
    }
}
