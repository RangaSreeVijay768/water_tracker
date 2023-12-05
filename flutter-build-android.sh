#!/bin/sh
cp .env.prod .env
flutter build appbundle
cp .env.dev .env
