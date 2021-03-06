-- Implicit CAD. Copyright (C) 2011, Christopher Olah (chris@colah.ca)
-- Released under the GNU GPL, see LICENSE

{-# LANGUAGE MultiParamTypeClasses, FunctionalDependencies, FlexibleInstances, FlexibleContexts, TypeSynonymInstances, UndecidableInstances #-}


module Graphics.Implicit.Primitives.BoxedObj2 where

import Graphics.Implicit.Definitions
import Graphics.Implicit.Primitives.Definitions
import Graphics.Implicit.Primitives.Obj2


instance PrimitiveSupporter2 (Boxed2 Obj2) where
	circle r = (circle r, ((-r, -r), (r,r)) )
	rectR r a b = (rectR r a b, ( a,b ) )
	polygonR r points = (polygonR r points, ((minimum xs, minimum ys), (maximum xs, maximum ys)) ) where
		(xs, ys) = unzip points


