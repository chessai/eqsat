--------------------------------------------------------------------------------

{-# LANGUAGE OverloadedStrings #-}

--------------------------------------------------------------------------------

-- | FIXME: doc
module EqSat.Tests.Unit
  ( unitTests
  ) where

--------------------------------------------------------------------------------

import qualified EqSat                                  as EqSat
import           EqSat.Domain                           (Domain)
import           EqSat.Equation                         (Equation)
import qualified EqSat.Equation                         as Equation
import qualified EqSat.Internal.BipartiteMatching       as BipartiteMatching
import           EqSat.Internal.Matrix                  (Matrix)
import qualified EqSat.Internal.Matrix                  as Matrix
import           EqSat.Internal.MBitmap                 (MBitmap)
import qualified EqSat.Internal.MBitmap                 as MBitmap
import qualified EqSat.Internal.MGraph                  ()
import qualified EqSat.Internal.MGraph                  as MGraph
import           EqSat.Internal.MHashMap                (MHashMap)
import qualified EqSat.Internal.MHashMap                as MHashMap
import           EqSat.Internal.MHashSet                (MHashSet)
import qualified EqSat.Internal.MHashSet                as MHashSet
import           EqSat.IsExpression
                 (IsExpression (exprToGTerm, gtermToExpr))
import           EqSat.Term                             (Term)
import qualified EqSat.Term                             as Term
import           EqSat.Variable                         (Variable)
import qualified EqSat.Variable                         as Variable

import           Test.Tasty                             (TestName, TestTree)
import qualified Test.Tasty                             as Tasty
import qualified Test.Tasty.Ingredients                 as Tasty
import qualified Test.Tasty.Ingredients.Basic           as Tasty
import qualified Test.Tasty.Ingredients.ConsoleReporter as Tasty
import qualified Test.Tasty.Options                     as Tasty
import qualified Test.Tasty.Providers                   as Tasty
import qualified Test.Tasty.Runners                     as Tasty

import           Control.Monad                          (void)
import           Control.Monad.ST.Strict                (ST, runST)

import           Control.Monad.Trans.Reader             (ReaderT)
import qualified Control.Monad.Trans.Reader             as ReaderT

import           Control.Monad.Trans.Class              (MonadTrans (lift))

import           Data.Text                              (Text)
import qualified Data.Text                              as Text

import           Data.Vector                            (Vector)
import qualified Data.Vector                            as Vector

import           Data.Proxy                             (Proxy (Proxy))

import           Flow                                   ((.>), (|>))

--------------------------------------------------------------------------------

-- | Unit tests for "EqSat".
test_EqSat :: IO TestTree
test_EqSat
  = [ -- FIXME: write unit tests
    ] |> Tasty.testGroup "EqSat" |> pure

-- | Unit tests for "EqSat.Term".
test_EqSat_Term :: IO TestTree
test_EqSat_Term
  = [ -- FIXME: write unit tests
    ] |> Tasty.testGroup "EqSat.Term" |> pure

-- | Unit tests for "EqSat.Equation".
test_EqSat_Equation :: IO TestTree
test_EqSat_Equation
  = [ -- FIXME: write unit tests
    ] |> Tasty.testGroup "EqSat.Equation" |> pure

-- | Unit tests for "EqSat.Variable".
test_EqSat_Variable :: IO TestTree
test_EqSat_Variable
  = [ -- FIXME: write unit tests
    ] |> Tasty.testGroup "EqSat.Variable" |> pure

-- | Unit tests for "EqSat.Domain".
test_EqSat_Domain :: IO TestTree
test_EqSat_Domain
  = [ -- FIXME: write unit tests
    ] |> Tasty.testGroup "EqSat.Domain" |> pure

-- | Unit tests for "EqSat.IsExpression".
test_EqSat_IsExpression :: IO TestTree
test_EqSat_IsExpression
  = [ -- FIXME: write unit tests
    ] |> Tasty.testGroup "EqSat.IsExpression" |> pure

-- | Unit tests for "EqSat.Internal.MHashSet".
test_EqSat_Internal_MHashSet :: IO TestTree
test_EqSat_Internal_MHashSet
  = [ -- FIXME: write unit tests
    ] |> Tasty.testGroup "EqSat.Internal.MHashSet" |> pure

-- | Unit tests for "EqSat.Internal.MHashMap".
test_EqSat_Internal_MHashMap :: IO TestTree
test_EqSat_Internal_MHashMap
  = [ -- FIXME: write unit tests
    ] |> Tasty.testGroup "EqSat.Internal.MHashMap" |> pure

-- | Unit tests for "EqSat.Internal.MBitmap".
test_EqSat_Internal_MBitmap :: IO TestTree
test_EqSat_Internal_MBitmap
  = [ -- FIXME: write unit tests
    ] |> Tasty.testGroup "EqSat.Internal.MBitmap" |> pure

-- | Unit tests for "EqSat.Internal.MGraph".
test_EqSat_Internal_MGraph :: IO TestTree
test_EqSat_Internal_MGraph
  = [ -- FIXME: write unit tests
    ] |> Tasty.testGroup "EqSat.Internal.MGraph" |> pure

-- | Unit tests for "EqSat.Internal.BipartiteMatching".
test_EqSat_Internal_BipartiteMatching :: IO TestTree
test_EqSat_Internal_BipartiteMatching
  = [ -- FIXME: write unit tests
    ] |> Tasty.testGroup "EqSat.Internal.BipartiteMatching" |> pure

-- | Unit tests for "EqSat.Internal.Matrix".
test_EqSat_Internal_Matrix :: IO TestTree
test_EqSat_Internal_Matrix
  = [ -- FIXME: write unit tests
    ] |> Tasty.testGroup "EqSat.Internal.Matrix" |> pure

--------------------------------------------------------------------------------

-- | FIXME: doc
unitTests :: IO [TestTree]
unitTests = do
  sequenceA
    [ test_EqSat
    , test_EqSat_Term
    , test_EqSat_Equation
    , test_EqSat_Variable
    , test_EqSat_Domain
    , test_EqSat_IsExpression
    , test_EqSat_Internal_MHashSet
    , test_EqSat_Internal_MHashMap
    , test_EqSat_Internal_MBitmap
    , test_EqSat_Internal_MGraph
    , test_EqSat_Internal_BipartiteMatching
    , test_EqSat_Internal_Matrix
    ]

--------------------------------------------------------------------------------
