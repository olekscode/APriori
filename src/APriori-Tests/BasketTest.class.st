Class {
	#name : #BasketTest,
	#superclass : #TestCase,
	#instVars : [
		'basket'
	],
	#category : #'APriori-Tests'
}

{ #category : #running }
BasketTest >> setUp [
	super setUp.
	basket := #(1 4 2 5 3 2 3 5 6 4 3) asBasket.
]

{ #category : #running }
BasketTest >> testAllPairs [
	| expected actual |
	expected := Set withAll: (#((1 2)(1 3)(1 4)(1 5)(1 6)(2 3)(2 4)(2 5)(2 6)(3 4)(3 5)(3 6)(4 5)(4 6)(5 6)) collect: #asSet).
	actual := basket allPairs.
	self assert: actual equals: expected.
]

{ #category : #running }
BasketTest >> testItems [
	| expected actual |
	expected := #(1 2 3 4 5 6) asSet.
	actual := basket items.
	self assert: actual equals: expected.
]