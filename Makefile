default: dev

clean:
	swift package clean
	swift package reset

update: Package.resolved
Package.resolved: Package.swift
	swift package update

xcode: LetsMeetModels.xcodeproj
LetsMeetModels.xcodeproj: Package.resolved
	swift package generate-xcodeproj

dev: update xcode
