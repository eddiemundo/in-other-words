{-# OPTIONS_HADDOCK not-home #-}
module Control.Effect.Type.ErrorIO where

import Control.Exception

-- | An effect for throwing and catching 'IO'-based exceptions.
data ErrorIO m a where
  ThrowIO :: Exception e => e -> ErrorIO m a
  CatchIO :: Exception e => m a -> (e -> m a) -> ErrorIO m a
