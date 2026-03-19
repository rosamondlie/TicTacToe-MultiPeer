//
//  ViewModifier.swift
//  XsandOs
//
//  Created by Rosamond Patricia Selamat Lie on 20/03/26.
//

import SwiftUI

struct NavStackContainer: ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 16, *){
            NavigationStack{
                content
            }
        }else{
            NavigationView{
                content
            }
            .navigationViewStyle(.stack)
        }
    }
}


extension View{
    public func inNavigationStack() -> some View{
        return self.modifier(NavStackContainer())
    }
}
