//
//  main.swift
//  Learning-Swift 4
//
//  Created by 徐伟达 on 2018/2/9.
//  Copyright © 2018年 徐伟达. All rights reserved.
//

import Foundation

//------------------------------------------------------------------
//                          定義エリア
//------------------------------------------------------------------
//------------------------------------------
//           それぞれの章のセレクター
//------------------------------------------
enum Swift4BasicLearningSelector {
	case S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15
}

//------------------------------------------
//                実行関数
//------------------------------------------
func Swift4BasicLearningRunner(of selecotr : Swift4BasicLearningSelector) {
	switch selecotr {
	case .S1:
		//--------------------------------------------
		//            S1 Swiftでプログラミング
		//--------------------------------------------
		S1BasicTest()
	case .S2:
		//-------------------------------------------
		//                S2 関数
		//-------------------------------------------
		S2BasicTest()
	case .S3:
		//-------------------------------------------
		//               S3 構造体
		//-------------------------------------------
		S3BasicTest()
	case .S4:
		//-------------------------------------------
		//               S4 オプショナル
		//-------------------------------------------
		S4BasicTest()
	default:
		print("//-------------------------------------------")
		print("//           \(selecotr) まだ作成されていない")
		print("//-------------------------------------------")
	}
}

//------------------------------------------------------------------
//                          実行エリア
//------------------------------------------------------------------
//Swift4BasicLearningRunner(of: .S1)
//Swift4BasicLearningRunner(of: .S2)
//Swift4BasicLearningRunner(of: .S3)
Swift4BasicLearningRunner(of: .S4)
//Swift4BasicLearningRunner(of: .S8)

