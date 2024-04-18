//
//  Strings.swift
//  Viper Practice
//
//  Created by Huzaifa-Umer on 18/04/2024.
//

import Foundation
import CoreText

struct Strings {
    
    struct Button {

        static var settings: String {
            return "Settings"
        }
        static var readNow: String {
            return "Read Now"
        }
        static var okay: String {
            return "Okay"
        }
        static var delete: String {
            return "Delete"
        }
        static var cancel: String {
            return "Cancel"
        }
        static var ramdanCalendar: String {
            return "Ramadan Calendar"
        }
        static var hijriCalendar: String {
            return "Hijri Calendar"
        }
        static var backToHome: String {
            return "Back To Home"
        }
        static var viewAllTimings: String {
            return "View All Timings"
        }
        static var play: String {
            return "play"
        }
        static var ayatOnly: String {
            return "Ayat Only"
        }
        static var surahTillEnd: String {
            return "Surah till end"
        }
        static var continuousPlay: String {
            return "Continuous Play"
        }
        static var shareVerses: String {
            return "Share Verses"
        }
        static var arabicOnly: String {
            return "Arabic Only"
        }
        static var arabicAndTranslation: String {
            return "Arabic And Translation"
        }
        static let next = "next"
        static let previous = "previous"
        static var setting: String {
            return "setting"
        }
        static var update: String {
            return "Update Now"
        }
    }
    
    struct Error {
        static let general = "Unexpected error occurred during process. Please try again."
        static let error = "Error"
        static let errorWhileReadingMockFile = "Unexpected error occurred while reading data from mock file."
        static let didNotFoundAudioFile = "Did Not Found Audio File"
    }
    
    struct Common {
        static let info = "Info"
        static let success = "Success"
    }
    
    struct JSONFiles {
        static let fruites = "Fruites"
    }
    
    struct Path {
        static let calendar = "/calendar"
        static let googleMap = "comgooglemaps://"
        static let appleMap = "http://maps.apple.com/"
        static let latestAppVersion = "https://gist.github.com/kinetic-solutions/bf5a7a73dca701fdc2af49ced00750e6/raw/PrayerTime-Version.json"
        static let appStore = "itms-apps://apple.com/app/id1633114818"
    }

    
    
 
    
    struct Title {
        static var fruites: String {
            return "Fruites"
        }
        static var fruiteDetail: String {
            return "Fruite Detail"
        }
    
        static var alert: String {
            return "Alert!"
        }
        
    }
    
    struct UserDefaultKey {
        static let userTranslationSelected  = "User_Translation_Selected"
        static let userScriptSelected = "User_Script_Selected"
        static let userRecitorSelected = "User_Recitor_Selected"
        static let softPermission = "Soft_Permission"
        static let namazAlarm = "Namaz_Alarm"
        static let saveCityLocation = "SaveCityLocation"
        static let languageToSet = "LanguageToSet"
        static let coachMarkController = "Coach_Mark_Controller"
    }
    
    struct ImageName {
        static let alarmOn = "AlarmON"
        static let alarmOf = "alarmOff"
        static let setting = "setting"
        static let pause = "pause"
        static let play = "play-1"
        static let location = "location-2"
        static let notification = "notification"
        static let nextDay = "Next"
        static let previousDay = "back"
        static let greenCircle = "greenCircle"
    }
    
    struct Font {
        static let arabicFont = "MuhammadiBoldFont"
        static let uthmanicFont = "KFGQPCUthmanicScriptHAFS"
        static let pdmsSaleem = "PDMS_Saleem_QuranFont"
        static let lateef = "LateefRegOT"
        static let muhammadiQuranicFont = "MUHAMMADI%20QURANIC%20FONT"
        static let alKalam = "Al Qalam Quran"
        static let alMajeed = "Al Majeed Quranic Font_shiped"
        static let madina = "MADDINA"
        static let noorehidayat = "noorehidayat"
        static let mcs = "Mcs Quran"
    }
    
    struct Message {
        static var notificationPermission: String {
            return "Application need access for notifications to complete this flow. Please go to settings and enable it."
        }
        static var comingSoon: String {
            return "We are working on this feature. Please stay tuned.!!"
        }
        static var updateApp: String {
            return "You are using and old version of the app. Please update to the latest version."
        }
        static var prayerTime: String {
            return "It's time for %@ prayer."
        }
        static var changeLanguage: String {
            return "Change language will be applied after you kill the app and launch it again"
        }
        static var stopAudio: String {
            return "Quran audio is already playing press oK to stop quran audio"
        }
        static var changeRecitorName: String {
            return "Choosing a new recitor will stop the currently playing auido. Would you like to continue?"
        }
    }
    
    struct DictionaryKey {
        static let cfBundeVerison = "CFBundleShortVersionString"
        static let verison = "version"
    }
}
