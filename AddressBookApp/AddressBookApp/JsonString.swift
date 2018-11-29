//
//  JsonString.swift
//  AddressBookApp
//
//  Created by oingbong on 29/11/2018.
//  Copyright © 2018 oingbong. All rights reserved.
//

import Foundation

struct JsonString {
    let data = """
    [{"date":"1월1일", "subtitle":"신정"},
    {"date":"2월16일", "subtitle":"구정"},
    {"date":"3월1일", "subtitle":"삼일절"},
    {"date":"5월5일", "subtitle":"어린이날"},
    {"date":"5월22일", "subtitle":"석가탄신일"},
    {"date":"6월6일", "subtitle":"현충일"},
    {"date":"8월15일", "subtitle":"광복절"},
    {"date":"9월24일", "subtitle":"추석"},
    {"date":"10월3일", "subtitle":"개천절"},
    {"date":"10월9일", "subtitle":"한글날"},
    {"date":"12월25일", "subtitle":"성탄절"}]
    """
    
    let dataWithImage = """
    [{"date":"1월1일", "subtitle":"신정", "image" : "snowy"},
    {"date":"2월16일", "subtitle":"구정", "image" : "sunny"},
    {"date":"3월1일", "subtitle":"삼일절"},
    {"date":"5월5일", "subtitle":"어린이날", "image" : "sunny"},
    {"date":"5월22일", "subtitle":"석가탄신일", "image" : "cloudy"},
    {"date":"6월6일", "subtitle":"현충일", "image" : "rainny"},
    {"date":"8월15일", "subtitle":"광복절", "image" : "sunny"},
    {"date":"9월24일", "subtitle":"추석", "image" : "rainny"},
    {"date":"10월3일", "subtitle":"개천절"},
    {"date":"10월9일", "subtitle":"한글날", "image" : "cloudy"},
    {"date":"12월25일", "subtitle":"성탄절", "image" : "snowy"}]
    """
}
