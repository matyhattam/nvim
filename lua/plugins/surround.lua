return {
	"echasnovski/mini.surround",
	version = "*",
	config = function()
		require("mini.surround").setup()
	end,
}
-- Add surrounding with sa (in visual mode or on motion).
-- Delete surrounding with sd.
-- Replace surrounding with sr
-- Find surrounding with sf or sF (move cursor right or left).
-- Highlight surrounding with sh.
-- Change number of neighbor lines with sn (see |MiniSurround-algorithm|).
