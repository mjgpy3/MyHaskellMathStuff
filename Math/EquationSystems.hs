module EquationSystems where

solveTwoEquations :: (Num a, Fractional a) => (a, a, a) -> (a, a, a) -> (a, a)

solveTwoEquations (a,b,c) (d,e,f) = ((c*e-b*f)/det, (a*f-c*d)/det)
 where det = a*e - b*d
