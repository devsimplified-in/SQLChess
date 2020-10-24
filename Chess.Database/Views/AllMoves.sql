create view AllMoves (From_X1,From_Y1,From_S1, TO_X2, TO_Y2, TO_S2)
as
Select  FromBoard.XCordinate From_X1, 
		FromBoard.YCordinate From_Y1, 
		FromBoard.Square From_S1, 
		TOBoard.XCordinate TO_X2, 
		TOBoard.YCordinate TO_Y2, 
		TOBoard.Square TO_S2
from	Board FromBoard cross join Board TOBoard
where	FromBoard.Square != TOBoard.Square