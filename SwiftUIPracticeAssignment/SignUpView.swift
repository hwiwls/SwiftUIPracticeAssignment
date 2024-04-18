//
//  SignUpView.swift
//  SwiftUIPracticeAssignment
//
//  Created by hwijinjeong on 4/19/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var nickname: String = ""
    @State private var location: String = ""
    @State private var referralCode: String = ""
    @State private var isExtraInfoActive: Bool = false
    @State private var isPresent: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack(spacing: 20) {
                    Text("JACKFLIX")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                        .padding()

                    TextField("이메일 주소", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)

                    SecureField("비밀번호", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)


                    if isExtraInfoActive {
                        TextField("닉네임 입력", text: $nickname)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)

                        TextField("위치 입력", text: $location)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)

                        TextField("추천 코드 입력", text: $referralCode)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                    }
                    
                    Toggle(isOn: $isExtraInfoActive) {
                        Text("추가 정보 입력")
                            .foregroundColor(.white)
                    }
                    .padding()

                    Button("회원가입") {
                        self.isPresent.toggle()  
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .fullScreenCover(isPresented: $isPresent) {
                        WelcomeView(nickname: nickname)
                    }

                    Spacer()
                }
            }
        }
    }
}


#Preview {
    SignUpView()
}
