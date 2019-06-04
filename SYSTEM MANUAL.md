# System Manual

## Minimum hardware and software requirements
* Apple laptop
* Swift 5
* IOS 12.2
* macOS 10.14
* XCode 10
* Google Firebase
* Firestore

## Installation guide
* Create or use existing Apple Developer ID and log into account
* Make a new project on XCode (single view app)
* Create a Firebase project (database)
* Connect iOS project with Firebase Firestore
    * Add an iOS application to your Firebase found at the bottom of project settings
    * Find application’s bundle ID and enter it into the bundle ID field
        Find this bundle ID by opening your app in XCode -- General tab in the top-level Runner directory. The Bundle Identifier field is the iOS bundle ID (it looks like: com.yourcompany.yourproject).
    * Click "register" after filling in the fields
    * Click Download GoogleService-Info.plist to obtain your Firebase iOS config file
        Place the file into your project main directory where other swift files are stored
    * Add Firebase SDKs to your application
        * Install Firebase libraries - using CocoaPods or locally (we used CocoaPods)
        * CocoaPods installation - open terminal
            `cd *your-project-directory*`
            `pod init`  
            `pod install`
            Open your `.xcworkspace` file to see the project in XCode
    * Initialize Firebase in application
        * Launch project and find the app delegate swift file
        * Type `import Firebase` at the top of the file
        * Find method `func application:didFinishLaunchingWithOptions:` and type in the method:  `FirebaseApp.configure()`
## Explanations of error messages and troubleshooting guides
* If buttons disappear or move when application is built, check screens for button constraints
    If there is none, go to bottom right corner and place constraints on the buttons
* If screen is blank when trying to query, check the swift file that the screen is a class of and make sure that you have the correct strings (case sensitive)
* Make sure to be consistant of simulation type (e.g. built on an iPhone 8, it will not run on other versions like iPhone XR)
* If the file does not open, make sure you are in the right version (updated)
## Information to contact the developer of the system if an undocumented question arises
Send undocumented questions to either developer emails listed below:
* bl584@drexel.edu
* jy529@drexel.edu
* sy556@drexel.edu
* lkt35@drexel.edu

