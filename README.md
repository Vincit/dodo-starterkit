# Dodo.js project template installer

[![Greenkeeper badge](https://badges.greenkeeper.io/Vincit/dodo-starterkit.svg)](https://greenkeeper.io/)

This package just copies new project template to the directory where
`npm install dodo-starterkit` is ran. Then it removes all traces of installer
package so you can put your initial project to version control.

## ES6 template (default)

    INSTALL_PATH=$PWD npm install dodo-starterkit

## ES5 template

    INSTALL_PATH=$PWD TEMPLATE=es5 npm install dodo-starterkit

## Template with Babel build system (not implemented yet)

    INSTALL_PATH=$PWD TEMPLATE=babel npm install dodo-starterkit

## Typescript template (not implemented yet)

    INSTALL_PATH=$PWD TEMPLATE=ts npm install dodo-starterkit
