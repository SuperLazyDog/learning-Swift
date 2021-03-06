//
//  S2_Basic.swift
//  Learning-Swift 4
//
//  Created by 徐伟达 on 2018/2/19.
//  Copyright © 2018年 徐伟达. All rights reserved.
//

import Foundation

//------------------------------------------------------------------
//                         テスト関数
//------------------------------------------------------------------
func S2BasicTest() {
	print("//-------------------------------------------")
	print("//                S2 関数")
	print("//-------------------------------------------")
	//---------------------------------------------
	//               関数定義の基本
	//---------------------------------------------
	// 基本定义
//	func test(a: Int, _:Bool) {}
//	func test(aa: Int, _ a: Bool) {}
//	test(a: <#T##Int#>, <#T##Bool#>)
//	test(aa: <#T##Int#>, <#T##a: Bool##Bool#>)
	//---------------------------------------------
	//          関数定義におけるさまざまな設定
	//---------------------------------------------
	// 改变参数自身 inout
//	func test2(sample a: inout Int) {} // 定义
//	test2(sample: &<#T##Int#>) // 呼出
	// 默认值
//	func test2_2(_ a: Int = 1, _ b: Int = 2, _ c: Int = 3, d: Int _ e: Int = 5) {}
	//---------------------------------------------
	//               オーバーロード
	//---------------------------------------------
	func test2_3(a: Int) {}
	
	//重载版本
//	func test2_3(a: Bool) {} // 参数类型, 不能只有参数类型不同
	func test2_3(a: Int, b: Int) {} // 参数数量
	func test2_3(labelSample a: Int) {} // 标签
//	func test2_3(aa a: Int) -> Bool { return false } // 返回值类型, 不能只是返回值不同
	
	// 参数类型不同的测试 结论:不能只有参数类型不同
//	func compare(_ a: Int, _ b: Int) -> Bool {return false}
//	func compare(_ a: String, _ b: String) -> Bool {return false}
	
	//---------------------------------------------
	//                 タプル
	//---------------------------------------------
	let info = (2018, 2, 19)
	var (y, m, d) = info
	(y, m ,d) = (d, y, m)
	// 带标签
	var sample2_4: (fst: Int, snd: Int) = (0, 1)
	print("\(sample2_4.fst)")
	sample2_4 = (snd: 0, fst: 1)
	print("\(sample2_4.fst)")
	var _: (Int, Int) = sample2_4 // sample2_4_2
	//---------------------------------------------
	//              Swiftの演算子
	//---------------------------------------------
	//比特运算符和c一样的规则 &, &=, |, |=, ^, ^=
	//移位运算符也和C规则一样, >>, >>=, <<, <<=
	//安全的移位运算符(masking shift, 不会超出范围) &<<， &<<=, &>>, &>>=
	print("Swiftの演算子")
	let a2_4_3: UInt8 = 1 // max = 255 = 2^8 - 1
	for n in [2, 8, 10 ,-1] {
		print("a2_4_3=\(a2_4_3)")
		print(a2_4_3 &<< n)
		//s1 1 &<< 2 = 4
		//s2 4 &<< 8 = ? (1024)
	}
//	let b2_4_3: UInt8 = 1
//	for n in [2, 8, 10 ,-1] {
//		print(b2_4_3 << n)
//	}
	//---------------------------------------------
	//               演算子の定義
	//---------------------------------------------
	print("双向运算符测试: " <|<| 6)
	print("前置运算符测试: " + ^|6)
}
//------------------------------------------------------------------
//                    オーバーロード　補助エリア
//------------------------------------------------------------------
//类型不同的重载不能用在被嵌套函数
//func test2_3(a: Bool) {}
//func test2_3(a: Int) {}
//
//func mySwap(_ a: inout String, _ b: inout String) {}
//func mySwap(_ a: inout Int, _ b: inout Int) {}

//------------------------------------------------------------------
//                    演算子の定義　補助エリア
//------------------------------------------------------------------
infix operator <|<| // 二项运算符， 右边的数字添加到左侧的字符串上
func <|<| (lhand: String, rhand: Int) -> String {
	return lhand + "\(rhand)"
}

prefix operator ^| // 前置运算符， 把数字转换成字符串
prefix func ^|(num: Int) -> String {
	return "\(num)"
}

precedencegroup MyTestPrecedence {
	associativity: right
//	higherThan:
//	lowerThan:
	assignment: true
}
//precedencegroup 优先群名 {
//	associativity: 结合规则 // right, left, none

