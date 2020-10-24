
CREATE PROC [dbo].[USPCleanandLoadData]
AS
BEGIN

	DELETE FROM Board

	INSERT INTO Board (BoardID,XCordinate,YCordinate,Square,Color)
	SELECT 01 AS BoardID,1 AS XCordinate,1 AS YCordinate, 'A1' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 02 AS BoardID,1 AS XCordinate,2 AS YCordinate, 'A2' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 03 AS BoardID,1 AS XCordinate,3 AS YCordinate, 'A3' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 04 AS BoardID,1 AS XCordinate,4 AS YCordinate, 'A4' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 05 AS BoardID,1 AS XCordinate,5 AS YCordinate, 'A5' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 06 AS BoardID,1 AS XCordinate,6 AS YCordinate, 'A6' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 07 AS BoardID,1 AS XCordinate,7 AS YCordinate, 'A7' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 08 AS BoardID,1 AS XCordinate,8 AS YCordinate, 'A8' AS Square,'WHITE' AS Color UNION ALL 

	SELECT 09 AS BoardID,2 AS XCordinate,1 AS YCordinate, 'B1' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 10 AS BoardID,2 AS XCordinate,2 AS YCordinate, 'B2' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 11 AS BoardID,2 AS XCordinate,3 AS YCordinate, 'B3' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 12 AS BoardID,2 AS XCordinate,4 AS YCordinate, 'B4' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 13 AS BoardID,2 AS XCordinate,5 AS YCordinate, 'B5' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 14 AS BoardID,2 AS XCordinate,6 AS YCordinate, 'B6' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 15 AS BoardID,2 AS XCordinate,7 AS YCordinate, 'B7' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 16 AS BoardID,2 AS XCordinate,8 AS YCordinate, 'B8' AS Square,'BLACK' AS Color UNION ALL 
																		
	SELECT 17 AS BoardID,3 AS XCordinate,1 AS YCordinate, 'C1' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 18 AS BoardID,3 AS XCordinate,2 AS YCordinate, 'C2' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 19 AS BoardID,3 AS XCordinate,3 AS YCordinate, 'C3' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 20 AS BoardID,3 AS XCordinate,4 AS YCordinate, 'C4' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 21 AS BoardID,3 AS XCordinate,5 AS YCordinate, 'C5' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 22 AS BoardID,3 AS XCordinate,6 AS YCordinate, 'C6' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 23 AS BoardID,3 AS XCordinate,7 AS YCordinate, 'C7' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 24 AS BoardID,3 AS XCordinate,8 AS YCordinate, 'C8' AS Square,'WHITE' AS Color UNION ALL 
																		
	SELECT 25 AS BoardID,4 AS XCordinate,1 AS YCordinate, 'D1' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 26 AS BoardID,4 AS XCordinate,2 AS YCordinate, 'D2' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 27 AS BoardID,4 AS XCordinate,3 AS YCordinate, 'D3' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 28 AS BoardID,4 AS XCordinate,4 AS YCordinate, 'D4' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 29 AS BoardID,4 AS XCordinate,5 AS YCordinate, 'D5' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 30 AS BoardID,4 AS XCordinate,6 AS YCordinate, 'D6' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 31 AS BoardID,4 AS XCordinate,7 AS YCordinate, 'D7' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 32 AS BoardID,4 AS XCordinate,8 AS YCordinate, 'D8' AS Square,'BLACK' AS Color UNION ALL 
																		
	SELECT 33 AS BoardID,5 AS XCordinate,1 AS YCordinate, 'E1' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 34 AS BoardID,5 AS XCordinate,2 AS YCordinate, 'E2' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 35 AS BoardID,5 AS XCordinate,3 AS YCordinate, 'E3' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 36 AS BoardID,5 AS XCordinate,4 AS YCordinate, 'E4' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 37 AS BoardID,5 AS XCordinate,5 AS YCordinate, 'E5' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 38 AS BoardID,5 AS XCordinate,6 AS YCordinate, 'E6' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 39 AS BoardID,5 AS XCordinate,7 AS YCordinate, 'E7' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 40 AS BoardID,5 AS XCordinate,8 AS YCordinate, 'E8' AS Square,'WHITE' AS Color UNION ALL 
																		
	SELECT 41 AS BoardID,6 AS XCordinate,1 AS YCordinate, 'F1' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 42 AS BoardID,6 AS XCordinate,2 AS YCordinate, 'F2' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 43 AS BoardID,6 AS XCordinate,3 AS YCordinate, 'F3' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 44 AS BoardID,6 AS XCordinate,4 AS YCordinate, 'F4' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 45 AS BoardID,6 AS XCordinate,5 AS YCordinate, 'F5' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 46 AS BoardID,6 AS XCordinate,6 AS YCordinate, 'F6' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 47 AS BoardID,6 AS XCordinate,7 AS YCordinate, 'F7' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 48 AS BoardID,6 AS XCordinate,8 AS YCordinate, 'F8' AS Square,'BLACK' AS Color UNION ALL 
																		
	SELECT 49 AS BoardID,7 AS XCordinate,1 AS YCordinate, 'G1' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 50 AS BoardID,7 AS XCordinate,2 AS YCordinate, 'G2' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 51 AS BoardID,7 AS XCordinate,3 AS YCordinate, 'G3' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 52 AS BoardID,7 AS XCordinate,4 AS YCordinate, 'G4' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 53 AS BoardID,7 AS XCordinate,5 AS YCordinate, 'G5' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 54 AS BoardID,7 AS XCordinate,6 AS YCordinate, 'G6' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 55 AS BoardID,7 AS XCordinate,7 AS YCordinate, 'G7' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 56 AS BoardID,7 AS XCordinate,8 AS YCordinate, 'G8' AS Square,'WHITE' AS Color UNION ALL 
																		
	SELECT 57 AS BoardID,8 AS XCordinate,1 AS YCordinate, 'H1' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 58 AS BoardID,8 AS XCordinate,2 AS YCordinate, 'H2' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 59 AS BoardID,8 AS XCordinate,3 AS YCordinate, 'H3' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 60 AS BoardID,8 AS XCordinate,4 AS YCordinate, 'H4' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 61 AS BoardID,8 AS XCordinate,5 AS YCordinate, 'H5' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 62 AS BoardID,8 AS XCordinate,6 AS YCordinate, 'H6' AS Square,'BLACK' AS Color UNION ALL 
	SELECT 63 AS BoardID,8 AS XCordinate,7 AS YCordinate, 'H7' AS Square,'WHITE' AS Color UNION ALL 
	SELECT 64 AS BoardID,8 AS XCordinate,8 AS YCordinate, 'H8' AS Square,'BLACK' AS Color 

	SELECT * FROM Board

END