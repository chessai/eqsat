--------------------------------------------------------------------------------

-- | FIXME: doc
module EqSat.Tests.Integration
  ( integrationTests
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

import           Hedgehog                               ((===))
import qualified Hedgehog                               as HH
import qualified Hedgehog.Gen                           as HH.Gen
import qualified Hedgehog.Range                         as HH.Range

import           Test.Tasty                             (TestTree)
import qualified Test.Tasty                             as Tasty
import qualified Test.Tasty.Hedgehog                    as Tasty.HH
import qualified Test.Tasty.Ingredients                 as Tasty
import qualified Test.Tasty.Ingredients.Basic           as Tasty
import qualified Test.Tasty.Ingredients.ConsoleReporter as Tasty
import qualified Test.Tasty.Options                     as Tasty
import qualified Test.Tasty.Providers                   as Tasty
import qualified Test.Tasty.Runners                     as Tasty

import           Flow                                   ((.>), (|>))

--------------------------------------------------------------------------------

-- | FIXME: doc
integrationTests :: IO [TestTree]
integrationTests = do
  pure []

--------------------------------------------------------------------------------
