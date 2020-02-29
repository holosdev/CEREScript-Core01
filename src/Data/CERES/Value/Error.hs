module Data.CERES.Value.Error where

import           Data.Text.Lazy                 ( Text )
import qualified Data.Text.Lazy                as TL

import           TextShow

import           Data.CERES.Type
import           Data.CERES.Value


errValueWith2 :: (TextShow a, TextShow b) => Name -> Message -> a -> b -> Value
errValueWith2 funcName errorType vA vB = ErrValue errorMessage
 where
  errorMessage = TL.concat
    [ "[Error]<"
    , funcName
    , " :=: "
    , errorType
    , "> "
    , showtl vA
    , " and "
    , showtl vB
    ]

errValueTEWith2 :: (TextShow a, TextShow b) => Name -> a -> b -> Value
errValueTEWith2 funcName = errValueWith2 funcName "TypeError"
