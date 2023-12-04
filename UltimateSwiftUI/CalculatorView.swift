//
//  CalculatorView.swift
//  UltimateSwiftUI
//
//  Created by Manish Sharma on 03/12/23.
//

import SwiftUI

struct CalculatorView: View {
    @State var textResult: String = "0"
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text(textResult)
                .font(.system(size: 60))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal
                )
            HStack(spacing: 20) {
                Button {
                    textResult = "0"
                } label: {
                    CalculatorButtonLayout(text: "AC", textColor: .white, backgroundColor: .gray)
                }
                Button {
                    textResult = "0"
                } label: {
                    CalculatorButtonLayout(text: "+/-", textColor: .white, backgroundColor: .gray)
                }
                Button {
                    textResult = "0"
                } label: {
                    CalculatorButtonLayout(text: "%", textColor: .white, backgroundColor: .gray)
                }
                Button {
//                    textResult = "0"
                } label: {
                    CalculatorButtonLayout(text: "/", textColor: .white, backgroundColor: .orange)
                }
            }
            HStack(spacing: 20) {
                Button {
                    textResult = "7"
                } label: {
                    CalculatorButtonLayout(text: "7", textColor: .white, backgroundColor: Color(.darkGray))
                }
                Button {
                    textResult = "8"
                } label: {
                    CalculatorButtonLayout(text: "8", textColor: .white, backgroundColor: Color(.darkGray))
                }
                Button {
                    textResult = "9"
                } label: {
                    CalculatorButtonLayout(text: "9", textColor: .white, backgroundColor: Color(.darkGray))
                }
                Button {
                    textResult = "0"
                } label: {
                    CalculatorButtonLayout(text: "x", textColor: .white, backgroundColor: .orange)
                }
            }
            HStack(spacing: 20) {
                
                Button {
                    textResult = "4"
                } label: {
                    CalculatorButtonLayout(text: "4", textColor: .white, backgroundColor: Color(.darkGray))
                }
                Button {
                    textResult = "5"
                } label: {
                    CalculatorButtonLayout(text: "5", textColor: .white, backgroundColor: Color(.darkGray))
                }
                Button {
                    textResult = "6"
                } label: {
                    CalculatorButtonLayout(text: "6", textColor: .white, backgroundColor: Color(.darkGray))
                }
                Button {
                    textResult = "-"
                } label: {
                    CalculatorButtonLayout(text: "-", textColor: .white, backgroundColor: .orange)
                }
            }
            HStack(spacing: 20) {
                Button {
                    textResult = "1"
                } label: {
                    CalculatorButtonLayout(text: "1", textColor: .white, backgroundColor: Color(.darkGray))
                }
                Button {
                    textResult = "2"
                } label: {
                    CalculatorButtonLayout(text: "2", textColor: .white, backgroundColor: Color(.darkGray))
                }
                Button {
                    textResult = "3"
                } label: {
                    CalculatorButtonLayout(text: "3", textColor: .white, backgroundColor: Color(.darkGray))
                }
                Button {
                    textResult = "0"
                } label: {
                    CalculatorButtonLayout(text: "+", textColor: .white, backgroundColor: .orange)
                }
            }
            HStack(spacing: 20) {
                Button {
                    textResult = "0"
                } label: {
                    CalculatorButtonLayout(text: "0", textColor: .white, backgroundColor: Color(.darkGray), width: 180)
                }
                Button {
                    textResult = ""
                } label: {
                    CalculatorButtonLayout(text: ",", textColor: .white, backgroundColor: Color(.darkGray))
                }
                Button {
                    textResult = "="
                } label: {
                    CalculatorButtonLayout(text: "=", textColor: .white, backgroundColor: .orange)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct CalculatorButtonLayout: View {
    let text: String
    let textColor: Color
    let backgroundColor: Color
    var width: CGFloat = 80
    var height: CGFloat = 80
    
    var body: some View {
        ZStack {
            if width == height {
                Circle()
                     .foregroundColor(backgroundColor)
            } else {
                Capsule()
                    .foregroundColor(backgroundColor)
            }
           
            Text(text)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(textColor)

        }
        .frame(width: width, height: height, alignment: .center)
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
