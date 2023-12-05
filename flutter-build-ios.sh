#!/bin/sh
cp .env.prod .env
flutter build ipa
cp .env.dev .env
