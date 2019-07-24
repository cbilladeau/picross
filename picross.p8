pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
-- picross
-- by c.billadeau
function _init()
	grid_init()
end

function _update()
	grid_update()
end

function _draw()
	grid_draw()
end
-->8
-- draw the grid
function grid_init()
	grid={}
	grid.unit=10
	grid.cols=10
	grid.rows=10
	grid.x1=0
	grid.y1=0
	grid.x2=0
	grid.y2=0
	grid.pad=0
end

function grid_update()
end

function grid_draw()
	cls()

	grid.x2=((grid.unit+1)*grid.cols)+1
	grid.pad=(127-grid.x2)/2
	grid.x1=grid.pad
	grid.x2+=grid.pad

	for i=1,grid.x2,(grid.unit+1) do
		print(i)
	end
	
	rectfill(0,0,127,127,1)
	color(7)
	rect(grid.x1,grid.x1,grid.x2,grid.x2)
	print('x1:',0,0)
	print(grid.x1,0,8)
	print('x2:',0,16)
	print(grid.x2,0,24)
	print('pad:',0,32)
	print(grid.pad,0,40)
	-- for i=9,125,13 do print(i) end
end

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
