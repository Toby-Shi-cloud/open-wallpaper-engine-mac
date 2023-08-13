//
//  Status.swift
//  Open Wallpaper Engine
//
//  Created by Haren on 2023/8/8.
//

import Cocoa

extension AppDelegate {
    func setStatusMenu() {
        let menu = NSMenu()
        menu.items = [
            .init(title: "Show Open Wallpaper Engine", systemImage: "photo", action: #selector(openMainWindow), keyEquivalent: ""),
            .init(title: "Recent Wallpapers", systemImage: "", action: nil, keyEquivalent: ""),
            .init(title: "Change Screensaver", systemImage: "moon.stars", action: nil, keyEquivalent: ""),
            .separator(),
            .init(title: "Browse Workshop", systemImage: "globe", action: nil, keyEquivalent: ""),
            .init(title: "Create Wallpaper", systemImage: "pencil.and.ruler.fill", action: nil, keyEquivalent: ""),
            .init(title: "Settings", systemImage: "gearshape.fill", action: #selector(openSettingsWindow), keyEquivalent: ""),
            .separator(),
            .init(title: "Support & FAQ", systemImage: "person.fill.questionmark", action: nil, keyEquivalent: ""),
            .separator(),
            .init(title: "Take Screenshot", systemImage: "camera.fill", action: nil, keyEquivalent: ""),
            .init(title: "Mute", systemImage: "speaker.slash.fill", action: nil, keyEquivalent: ""),
            .init(title: "Pause", systemImage: "pause.fill", action: #selector(pause), keyEquivalent: ""),
            .init(title: "Quit", systemImage: "power", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q")
        ]
        
        self.statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        self.statusItem.menu = menu
        
        if let button = self.statusItem.button {
            button.image = NSImage(systemSymbolName: "play.desktopcomputer", accessibilityDescription: nil)
        }
    }
}