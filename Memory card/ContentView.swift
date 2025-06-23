//
//  ContentView.swift
//  Memory card
//
//  Created by My Meo on 6/17/25.
//

import SwiftUI

struct ContentView: View { //this one is not like class, cannot inheritence; "View": behave like a View, the view variable is working like binary function, showing sth or not
    var body: some View { //some View is a type of a variable named body, like var x: String/ Int
        //inside the curly bracket is the value of body called computed property, when the body is asked, the inside will be computed
//        VStack(content:  { //vertical stack, it has some parameters
//            Image(systemName: "globe") //image struct, systemName: the item on the asset, we call then straight forward
//                .foregroundColor(Color.green)//those things here are functions that return a view, It takes a view then modifies then returns a view
//                .imageScale(.small)
//                .foregroundStyle(.green)
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
            //vstack takes a function as a parameter
            .foregroundColor(.orange)
//            .font(.largeTitle)//this is a function
            .padding()
    }
}
/*Functions:
strokeBorder(lineWidth:, dash) we cannot do both strcke and fill at the saee time
*/
//card view struct
struct CardView: View{
//    var isFaceUp: Bool = true //default value for is face up
    var isFaceUp = true //default value for is face up
    
    var body: some View{
        ZStack(alignment: .center, content:  { //alignment to set the content's position in the block
            //local variable
//            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12) //let means contant
            let base = RoundedRectangle(cornerRadius: 12) //type interference, base will be recognized as rounded rectangle
            
            if isFaceUp {
                base.fill(Color.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)//text struct
            }
            else{
                RoundedRectangle(cornerRadius: 12).fill()
            }
        })
    }
}


#Preview {
    ContentView()
}
