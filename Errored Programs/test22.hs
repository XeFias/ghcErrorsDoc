{-# LANGUAGE MagicHash #-}
import GHC.Prim
import GHC.Types

main = do
    let primDouble = 0.42## :: Double#
    let double = 0.42 :: Double
    IO (\s -> mkWeakNoFinalizer# double () s)
