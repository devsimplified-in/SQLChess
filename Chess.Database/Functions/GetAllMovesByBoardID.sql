CREATE FUNCTION [dbo].[GetAllMovesByBoardID]
(
	@GamePlayerBoardID INT,
	@XCordinate_Dest INT,
	@YCordinate_Dest INT
) 
RETURNS @ResultTable TABLE
( 
	From_X1 INT,
	From_Y1 INT,
	From_S1 char(2),
	TO_X2 INT,
	TO_Y2 INT,
	TO_S2 char(2)
) 
AS BEGIN
        
	
	DECLARE @BoardID INT

	SELECT	@BoardID = BoardID 
	FROM	GamePlayerBoard 
	WHERE	GamePlayerBoardID = @GamePlayerBoardID

	DECLARE @PIECECODE VARCHAR(10)

	SELECT	@PIECECODE = Code
	FROM	GamePlayerBoard 
			INNER JOIN GamePlayerPiece
			ON GamePlayerBoard.GamePlayerPieceID = GamePlayerPiece.GamePlayerPieceID  
			INNER JOIN Piece
			ON GamePlayerPiece.PieceID = Piece.PieceID  
	WHERE	GamePlayerBoardID = @GamePlayerBoardID



	DECLARE @X1 INT
	DECLARE @Y1 INT
	DECLARE @S1 char(2)
		
	SELECT	@X1 = XCordinate,
			@Y1 = YCordinate,
			@S1 = Square
	FROM	Board 
	where	BoardID = @BoardID

	

	IF @PIECECODE = 'KING'
	BEGIN
			INSERT INTO @ResultTable
			SELECT	From_X1,
					From_Y1,
					From_S1,
					TO_X2,
					TO_Y2,
					TO_S2
			FROM	AllMoves
			WHERE	
			(
				ABS(From_X1 - TO_X2) < 2  AND  ABS(From_Y1 - TO_Y2)  < 2 				
			)
			AND From_X1 = @X1
			AND From_Y1 = @Y1
			AND From_S1 =@S1 
	END
	IF @PIECECODE = 'BISHOP'
	BEGIN
			INSERT INTO @ResultTable

			SELECT	From_X1,
					From_Y1,
					From_S1,
					TO_X2,
					TO_Y2,
					TO_S2
			FROM	AllMoves
			WHERE	ABS(From_X1-TO_X2) = ABS(From_Y1-TO_Y2)
					AND From_X1 = @X1
					AND From_Y1 = @Y1
					AND From_S1 =@S1 
					 

	END
	IF @PIECECODE = 'QUEEN'
	BEGIN
			INSERT INTO @ResultTable

			SELECT	From_X1,
					From_Y1,
					From_S1,
					TO_X2,
					TO_Y2,
					TO_S2
			FROM	AllMoves
			WHERE	From_X1 = @X1
					AND From_Y1 = @Y1
					AND From_S1 =@S1 
					AND (From_X1 = TO_X2 OR From_Y1 = TO_Y2)

	END
	IF @PIECECODE = 'KNIGHT'
	BEGIN
			INSERT INTO @ResultTable

			SELECT	From_X1,
					From_Y1,
					From_S1,
					TO_X2,
					TO_Y2,
					TO_S2
			FROM	AllMoves
			WHERE	From_X1 = @X1
					AND From_Y1 = @Y1
					AND From_S1 =@S1 
					AND (
							(ABS(From_X1 - TO_X2) = 2 AND ABS(From_Y1-TO_Y2) = 1) 
							OR
							(ABS(From_X1 - TO_X2) = 1 AND ABS(From_Y1-TO_Y2) = 2)
					)

	END
	IF @PIECECODE = 'ROOK'
	BEGIN
			INSERT INTO @ResultTable

			SELECT	From_X1,
					From_Y1,
					From_S1,
					TO_X2,
					TO_Y2,
					TO_S2
			FROM	AllMoves
			WHERE	From_X1 = @X1
					AND From_Y1 = @Y1
					AND From_S1 =@S1 
					AND (From_X1 = TO_X2 OR From_Y1 = TO_Y2)

	END
	IF @PIECECODE = 'PAWN'
	BEGIN
			INSERT INTO @ResultTable

			SELECT	From_X1,
					From_Y1,
					From_S1,
					TO_X2,
					TO_Y2,
					TO_S2
			FROM	AllMoves
			WHERE	From_X1 = @X1
					AND From_Y1 = @Y1
					AND From_S1 =@S1 
					AND
					(
						From_Y1 != TO_Y2
						AND 
						(
							(ABS(From_X1 - TO_X2) < 2 AND  ABS(From_Y1 - TO_Y2)  < 2)
						)
					)
	END

	
RETURN
END