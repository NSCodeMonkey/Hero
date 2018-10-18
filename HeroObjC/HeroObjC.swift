//
//  HeroObjC.swift
//  HeroObjC
//
//  Created by edison on 2018/10/18.
//  Copyright © 2018 Luke Zhao. All rights reserved.
//

import Hero

@objcMembers
public final class HeroObjC: NSObject {
  public static func updateInteractiveTransition(_ percentageComplete: CGFloat) {
    Hero.shared.update(percentageComplete)
  }
  
  public static func cancelInteractiveTransition(_ animated: Bool) {
    Hero.shared.cancel(animate: animated)
  }
  
  public static func finishInteractiveTransition(_ animated: Bool) {
    Hero.shared.finish(animate: animated)
  }
}

@objc
public extension UIView {
  public var ho_heroID: String? {
    get { return hero.id }
    set { hero.id = newValue }
  }
  
  public var ho_isHeroEnabled: Bool {
    get { return hero.isEnabled }
    set { hero.isEnabled = newValue }
  }
  
  public var ho_isHeroEnabledForSubviews: Bool {
    get { return hero.isEnabledForSubviews }
    set { hero.isEnabledForSubviews = newValue }
  }
  
  public var ho_heroModifierString: String? {
    get { fatalError("Reverse lookup is not supported") }
    set { hero.modifierString = newValue }
  }
}

@objc
public extension UIViewController {
  public var ho_modalAnimationTypeString: String? {
    get { return hero.modalAnimationTypeString }
    set { hero.modalAnimationTypeString = newValue }
  }

  public var ho_isHeroEnabled: Bool {
    get { return hero.isEnabled }
    set { hero.isEnabled = newValue }
  }
}

@objc
public extension UINavigationController {
  public var ho_navigationAnimationTypeString: String? {
    get { return hero.navigationAnimationTypeString }
    set { hero.navigationAnimationTypeString = newValue }
  }
}
