module Data.CERES.VariablePosition where


import           Data.IntMap                    ( IntMap )
import qualified Data.IntMap                   as IM
import qualified Data.Text                     as T
import           Data.Text.Lazy                 ( Text )
import qualified Data.Text.Lazy                as TL

import           TextShow

import           Data.CERES.Type
import           Data.CERES.Value


-- Variable Position for abstract variable's real place
data VariablePosition
  = VP VariablePlace VariableIndex
  deriving (Eq, Ord, Read)

instance Show VariablePosition where
  show = TL.unpack . showtl

instance TextShow VariablePosition where
  showb (VP vPlace vIndex) =
    showb vPlace <> singleton '[' <> showb vIndex <> singleton ']'

-- TODO: Need to implement Eq/Ord instances for AtWorld and AtTime based on worldTime
-- instance Eq VariablePosition
-- instance Ord VariablePosition


data VariablePlace = AtWorld | AtTime | AtNWorld | AtNTime | AtDict | AtNDict | AtVars | AtNVars | AtLVars | AtLNVars | AtLTemp | AtLNTemp | AtHere | AtNull deriving (Eq, Ord, Enum, Bounded, Read)

instance Show VariablePlace where
  show = TL.unpack . showtl

instance TextShow VariablePlace where
  showb AtWorld  = fromLazyText "AtWorld"
  showb AtTime   = fromLazyText "AtTime"
  showb AtNWorld = fromLazyText "AtNWorld"
  showb AtNTime  = fromLazyText "AtNTime"
  showb AtDict   = fromLazyText "AtDict"
  showb AtNDict  = fromLazyText "AtNDict"
  showb AtVars   = fromLazyText "AtVars"
  showb AtNVars  = fromLazyText "AtNVars"
  showb AtLVars  = fromLazyText "AtLVars"
  showb AtLNVars = fromLazyText "AtLNVars"
  showb AtLTemp  = fromLazyText "AtLTemp"
  showb AtLNTemp = fromLazyText "AtLNTemp"
  showb AtHere   = fromLazyText "AtHere"
  showb AtNull   = fromLazyText "AtNull"


data VariableIndex = VII Idx | VIN NKey | VIIT Idx Time | VINT NKey Time | VIIRI Idx [Idx] | VINRI NKey [Idx] | VIIRIT Idx [Idx] Time | VINRIT NKey [Idx] Time | VIV Value | VIAtom | VINull | PVII Idx | PVIN NKey | PVIT Time deriving (Eq, Ord, Read)

instance Show VariableIndex where
  show = TL.unpack . showtl

instance TextShow VariableIndex where
  showb (VII idx ) = fromLazyText "VII=" <> showb idx
  showb (VIN nKey) = fromLazyText "VIN=" <> fromText nKey
  showb (VIIT idx time) =
    fromLazyText "VIIT=" <> showb idx <> singleton ':' <> showb time
  showb (VINT nKey time) =
    fromLazyText "VINT=" <> fromText nKey <> singleton ':' <> showb time
  showb (VIIRI idx indices) = fromLazyText "VIIRI=" <> showb idx <> singleton ':' <> showb indices
  showb (VINRI nKey indices) = fromLazyText "VINRI=" <> fromText nKey <> singleton ':' <> showb indices
  showb (VIIRIT idx indices time) =
    fromLazyText "VIIRIT=" <> showb idx <> singleton ':' <> showb indices <> singleton ':' <> showb time
  showb (VINRIT nKey indices time) =
    fromLazyText "VINRIT=" <> fromText nKey <> singleton ':' <> showb indices <> singleton ':' <> showb time
  showb (VIV value) = fromLazyText "VIV=" <> showb value
  showb VIAtom      = fromLazyText "VIAtom"
  showb VINull      = fromLazyText "VINull"
  showb (PVII idx ) = fromLazyText "PVII=" <> showb idx
  showb (PVIN nKey) = fromLazyText "PVIN=" <> fromText nKey
  showb (PVIT time) = fromLazyText "PVIT=" <> showb time
