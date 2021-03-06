Changelog for CEREScript-SuperSet
====

## Unreleased

### Add
* Add structured data type
* Add functions converting between `VI*` <=> `PVI*`
* Add Compatible Instructions for `ArrValue`
* Add accessory functions for `VariablePlace` and `VariableIndex` in `VariablePosition`
* Add Loop Control Instructions
* Add If & Case Control Instructions
* Add `LstValue` and `SetValue`

### Change
* Change VariableContainer more useful
* Overhaul to split framework and implementation by parametric approach
  * Framework goes ArchCEREScript
  * CEREScript-SuperSet is now for experimental implementation

### Remove
* Remove unnecessary instructions because of `AtHere`


## 0.20.0.0 -- 2020-05-XX

### Fixed
* Fix type of `showtlCEREScript`


## 0.19.0.0 -- 2020-05-04

### Added
* Implement more instructions

### Changed
* Change name of the package as CEREScript-SuperSet
* Use `Data.Text` instead of `Data.Text.Lazy` because of Lazy Text does not provide any performance advantage


## 0.18.0.0 -- 2020-04-18

### Added
* Implement temporal CEREScript showing functions

### Fixed
* Fixed `ToInterpreter` and `Extend` instruction structure based on original design


## 0.17.3.0 -- 2020-04-16

### Added
* Add extendable Operator


## 0.17.2.0 -- 2020-04-16

### Added
* Add missing comparing Operator


## 0.17.1.0 -- 2020-04-16

### Added
* Add missing Text Operator


## 0.17.0.0 -- 2020-04-15

### Added
* Add instructions `Log` and `ParseScript`
* Add `showbCSC*` for `ToInterpreter` and `Extend`
* Add Text Operator
* Add customizable Operator

### Changed
* Redesign `ToInterpreter` and `Extend`


## 0.16.1.0 -- 2020-04-14

### Added
* Implement type and functions for Pointer `Value` type `PtrValue`


## 0.16.0.0 -- 2020-04-14

### Changed
* Unify `VariablePosition` and `Value` and `Script` modules to resolve mutual reference for implementing `PtrValue` and etc.


## 0.15.2.0 -- 2020-04-14

### Added
* Add `CERESOperator` for handling registers
* Add a instruction `Noop`
* Addd Extensibility instructions for CEREScript
  * Messages for to an Interpreter
  * Reserved for extensibility
* Add a `VariableIndex` series for partial `NKey` matching


## 0.15.1.0 -- 2020-04-13

### Added
* Add `ReplaceText` and `ReplaceTextTo` instructions

### Changed
* Change & Add `Show` and `TextShow` instance for `CERES`


## 0.15.0.0 -- 2020-04-12

### Changed
* Change representation of `ArrValue`
* Change container type of `ArrValue`


## 0.14.0.0 -- 2020-04-10

### Added
* Add new `VariablePlace` `AtTricky` for special variable such as `WorldTime`, `siID`, etc.
* Add new Array type `Value`
* Add new partial `VariableIndex` for Array type


## 0.13.0.0 -- 2020-04-09

### Added
* Add new `VariablePlace` `AtTricky` for special variable such as `WorldTime`, `siID`, etc.
* Add new Array type `Value`

### Changed
* Add more `VariablePlace` and rename of `Local*`

### Removed
* Remove useless Read deriving


## 0.12.0.0 -- 2020-04-06

### Changed
* Change type of `NKey` from `Data.Text.Lazy.Text` to `Data.Text.Text`
* Split `VariablePosition` to `VariablePlace` and `VariableIndex`

## 0.11.1.0 -- 2020-03-31

### Added
* Add more type aliases for `NKey`


## 0.11.0.0 -- 2020-03-28

### Added
* Add more type aliases like `NKey`, `Str`, and `Idx`

### Changed
* Change `VariablePosition` name for unify length


## 0.10.0.0 -- 2020-03-26

### Changed
* Simplify `VariablePosition`
* Add new Constructor `AtNDict`
* `VariablePosition` handles idx by itself

### Removed
* Remove `VariablePlace`


## 0.9.0.0 -- 2020-03-12

### Added
* Add a VariablePlace data constructor `AtNull`
* Add a ValueType, Value, and data type `Atom`

## 0.8.1.0 -- 2020-03-12

### Added
* Add `getValueType`


## 0.8.0.0 -- 2020-03-12

### Added
* Add more random instructions


## 0.7.0.0 -- 2020-03-12

### Added
* Add more converting method

### Fix
* Fill missing operators in `operatorSelector`

### Removed
* Remove interpreter dependent function `modify*`


## 0.6.0.0 -- 2020-03-08

### Added
* Add more instructions

### Changed
* Add CRS prefix to existing instructions


## 0.5.3.0 -- 2020-03-08

### Added
* Add constant `blankVM`
* Add `get*` method for `Value`


## 0.5.2.0 -- 2020-03-08

### Added
* Add constant `blankVM`

### Changed
* Reorder `VariablePlace` and `VariablePosition` data constructors


## 0.5.1.0 -- 2020-03-05

### Changed
* Simplify type VariablePlace
* Refactoring `Show` method with `TextShow`


## 0.5.0.0 -- 2020-03-04

### Changed
* Remove `Advanced` layer
* Add timeIndex for `AtWord` and `AtTime` VariablePlace

## Removed
* Remove Interpreter code


## 0.4.0.0 -- 2020-03-03

### Changed
* Remove executable generation code from package.yaml
* Refactoring test generation code

### Removed
* Remove `CERESpool` for Interpreter implementation


## 0.3.0.0 -- 2020-03-01

### Added
* Implement `Advanced` instruction set and its operator
* Integrate `TextShow`

### Changed
* Make compatible with `TextShow` and `AtHere`


## 0.2.0.0 -- 2019-05-07

### Changed
* Rename `ValueContainer` to `VariablePosition`
* Rename some instructions name to distinguish Variable and Value
* Redesign interpreter as RW-Set style for measuring concurrent event process

### Added
* Implement `ValueContainer` newly


## 0.1.0.0 -- 2019-05-06

### Changed
* Move functional modules from `Data.CERES.*` to `CERES.*`
* Generalized instructions by `ValueContainer`
* Rename `CERES.Operator` to `CERES.Operate`

### Added
* Implement `ValueContainer`


## 0.0.0.1 -- 2019-02-23

### Added
* Implement Data.Type
* Implement Data.CERES.Value
