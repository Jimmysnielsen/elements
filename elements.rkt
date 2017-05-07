#lang racket
;; this file loads the latest version of elements.rkt


;; *ELEMENTS* is a non-mutable struct 
;; the individual elements come from the underlying file
;; first commit is elements.0.rkt

(struct element (atom-nr name group classification state wt) #:transparent)
; atom-nr is Natural 1..118
; name is String "H", "He", "Li",...
; period is Natural 1..7
; group is Natural 1..18
; classification is String "metalloid", "non-metal" "alkali metal", "alkaline earth", "transition metal", "rare earth", "other metal", "halogen", "noble gas"
; state is String "solid", "gas", "liquid" is the natural state at STP.
; wt is atomic weight avg. or most stable isotope for unstable elements

#| !!!
; mp is melting point at 1 atm.
|#

#| !!!
;group-name is String "I A","II A","III B", "IV B", "V B", "VI B", "VII B", "VIII B", "I B", "II B", "I B", "II B", "III A", "IV A", "V A", "VI A", "VII A", "VIII A"
|#


(define *ELEMENTS*
  (list
   (element 1 "H"   1  "non-metal"      "gas" 1.00797)
   (element 2 "He"  18 "noble gas"      "gas" 4.00260)
   (element 3 "Li"  1  "alkali metal"   "solid" 6.941)
   (element 4 "Be"  2  "alkaline earth" "solid" 9.01218)
   (element 5 "B"   13 "metalloid"      "solid" 10.81)
   (element 6 "C"   14 "non-metal"      "solid" 12.011)
   (element 7 "N"   15 "non-metal"      "gas" 14.0067)
   (element 8 "O"   16 "non-metal"      "gas" 15.9994)
   (element 9 "F"   17 "halogen"        "gas" 18.9984)
   (element 10 "Ne" 18 "noble gas"      "gas" 20.179)
   (element 11 "Na" 1 "alkali metal"    "solid" 22.9898)
   (element 12 "Mg" 2 "alkaline earth"  "solid" 24.305)
   (element 13 "Al" 13 "metal"          "solid" 26.9815)
   (element 14 "Si" 14 "metalloid"      "solid" 28.086)
   (element 15 "P"  15 "non-metal"      "solid" 30.9738)
   (element 16 "S"  16 "non-metal"      "solid" 32.06)
   (element 17 "Cl" 17 "halogen"        "gas" 35.453)
   (element 18 "Ar" 18 "noble gas"      "gas" 39.948)
   (element 19 "K"  1 "alkali metal"    "solid" 39.0983)
   (element 20 "Ca" 2 "alkaline earth"  "solid" 40.08)
   (element 21 "Sc" 3 "transition metal" "solid" 44.9559)
   (element 22 "Ti" 4 "transition metal" "solid" 47.90)
   (element 23 "V"  5 "transition metal" "solid" 50.9414)
   (element 24 "Cr" 6 "transition metal" "solid" 51.996)
   (element 25 "Mn" 7 "transition metal" "solid" 54.9380)
   (element 26 "Fe" 8 "transition metal" "solid" 55.847)
   (element 27 "Co" 9 "transition metal" "solid" 58.9332)
   (element 28 "Ni" 10 "transition metal" "solid" 58.71)
   (element 29 "Cu" 11 "transition metal" "solid" 63.546)
   (element 30 "Zn" 12 "transition metal" "solid" 65.38)
   (element 31 "Ga" 13 "other metal"      "solid" 157.25)
   (element 32 "Ge" 14 "metalloid"        "solid" 72.59)
   (element 33 "As" 15 "metalloid"        "solid" 74.9216)
   (element 34 "Se" 16 "non-metal"        "solid" 78.96)
   (element 35 "Br" 17 "halogen"          "gas" 79.904)
   (element 36 "Kr" 18 "noble gas"        "gas" 83.80)
   (element 37 "Rb" 1 "alkali metal"      "solid" 85.4678)
   (element 38 "Sr" 2 "alkaline earth"    "solid" 87.62)
   (element 39 "Y"  3 "transition metal"  "solid" 88.9059)
   (element 40 "Zr" 4 "transition metal"  "solid" 91.22)
   (element 41 "Nb" 5 "transition metal"  "solid" 92.9064)
   (element 42 "Mo" 6 "transition metal"  "solid" 95.94)
   (element 43 "Tc" 7 "transition metal"  "solid" 98.9062)
   (element 44 "Ru" 8 "transition metal"  "solid" 101.07)
   (element 45 "Rh" 9 "transition metal"  "solid" 102.9055)
   (element 46 "Pd" 10 "transition metal" "solid" 106.4)
   (element 47 "Ag" 11 "transition metal" "solid" 107.868)
   (element 48 "Cd" 12 "transition metal" "solid" 112.41)
   (element 49 "In" 13 "other metal"      "solid" 114.82)
   (element 50 "Sn" 14 "other metal"      "solid" 118.69) 
   (element 51 "Sb" 15 "metalloid"        "solid" 121.75)
   (element 52 "Te" 16 "metalloid"        "solid" 127.60)
   (element 53 "I"  17 "halogen"          "solid" 126.9045)
   (element 54 "Xe" 18 "noble gas"        "gas"  131.04)
   (element 55 "Cs" 1 "alkali metal"      "solid" 132.9054)
   (element 56 "Ba" 2 "alkaline earth"    "solid" 137.34)
   (element 57 "La" 3 "rare earth"        "solid" 138.9055)
   (element 58 "Ce" 3 "rare earth"        "solid" 140.12)
   (element 59 "Pr" 3 "rare earth"        "solid" 140.9077)
   (element 60 "Nd" 3 "rare earth"        "solid" 144.24)
   (element 61 "Pm" 3 "rare earth"        "solid" 145)
   (element 62 "Sm" 3 "rare earth"        "solid" 150.4)
   (element 63 "Eu" 3 "rare earth"        "solid" 151.96)
   (element 64 "Gd" 3 "rare earth"        "solid" 157.25)
   (element 65 "Tb" 3 "rare earth"        "solid" 158.9254)
   (element 66 "Dy" 3 "rare earth"        "solid" 162.50)
   (element 67 "Ho" 3 "rare earth"        "solid" 164.9304)
   (element 68 "Er" 3 "rare earth"        "solid" 167.26)
   (element 69 "Tm" 3 "rare earth"        "solid" 168.9342)
   (element 70 "Yb" 3 "rare earth"        "solid" 173.04)
   (element 71 "Lu" 3 "transition metal"  "solid" 174.97)
   (element 72 "Hf" 4 "transition metal"  "solid" 178.49)
   (element 73 "Ta" 5 "transition metal"  "solid" 180.9479)
   (element 74 "W"  6 "transition metal"  "solid" 183.85)
   (element 75 "Re" 7 "transition metal"  "solid" 186.2)
   (element 76 "Os" 8 "transition metal"  "solid" 190.2)
   (element 77 "Ir" 9 "transition metal"  "solid" 192.22)
   (element 78 "Pt" 10 "transition metal" "solid" 195.09)
   (element 79 "Au" 11 "transition metal" "solid" 196.9665)
   (element 80 "Hg" 12 "transition metal" "solid" 200.59)
   (element 81 "Tl" 13 "other metal"      "solid" 204.37)
   (element 82 "Pb" 14 "other metal"      "solid" 207.2)
   (element 83 "Bi" 15 "other metal"      "solid" 208.9808)
   (element 84 "Po" 16 "other metal"      "solid" 210)
   (element 85 "At" 17 "halogen"          "gas" 210)
   (element 86 "Rn" 18 "noble gas"        "gas" 222)
   (element 87 "Fr" 1 "alkali metal"      "solid" 223)
   (element 88 "Ra" 2 "alkaline earth"    "solid" 226.0254)
   (element 89 "Ac" 3 "rare earth"        "solid" 227)
   (element 90 "Th" 3 "rare earth"        "solid" 232.0381)
   (element 91 "Pa" 3 "rare earth"        "solid" 231.0359)
   (element 92 "U"  3 "rare earth"        "solid" 238.029)
   (element 93 "Np" 3 "rare earth"        "solid" 237.0482)
   (element 94 "Pu" 3 "rare earth"        "solid" 244)
   (element 95 "Am" 3 "rare earth"        "solid" 243)
   (element 96 "Cm" 3 "rare earth"        "solid" 247)
   (element 97 "Bk" 3 "rare earth"        "solid" 247)
   (element 98 "Cf" 3 "rare earth"        "solid" 251)
   (element 99 "Es" 3 "rare earth"        "solid" 254)
   (element 100 "Fm" 3 "rare earth"       "solid" 257)
   (element 101 "Md" 3 "rare earth"       "solid" 258)
   (element 102 "No" 3 "rare earth"       "solid" 259)
   (element 103 "Lr" 3 "transition metal" "solid" 266)
   (element 104 "Rf" 4 "transition metal" "solid" 267)
   (element 105 "Db" 5 "transition metal" "solid" 268)
   (element 106 "Sg" 6 "transition metal" "solid" 269)
   (element 107 "Bh" 7 "transition metal" "solid" 270)
   (element 108 "Hs" 8 "transition metal" "solid" 277)
   (element 109 "Mt" 9 "transition metal" "solid" 278)
   (element 110 "Ds" 10 "transition metal" "solid" 281)
   (element 111 "Rg" 11 "transition metal" "solid" 282)
   (element 112 "Cn" 12 "transition metal" "solid" 285)
   (element 113 "Nh" 13 "other metal"      "solid" 286)
   (element 114 "Fl" 14 "other metal"      "solid" 289)
   (element 115 "Mc" 15 "other metal"      "solid" 290)
   (element 116 "Lv" 16 "other metal"      "solid" 293)
   (element 117 "Ts" 17 "halogen"          "solid" 294)
   (element 118 "Og" 18 "noble gas"        "solid" 294)
   ))


