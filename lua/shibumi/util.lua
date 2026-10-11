local util = {}

local function rgb(hex)
   local r, g, b = hex:match("^#(%x%x)(%x%x)(%x%x)$")
   if r then
      return tonumber(r, 16), tonumber(g, 16), tonumber(b, 16)
   end
end

function util.tinter(bg)
   local br, bgr, bb = rgb(bg)

   return function(fg, alpha)
      local fr, fgr, fb = rgb(fg)
      if not (fr and br) then
         return fg
      end

      local function mix(f, b) return math.floor(alpha * f + (1 - alpha) * b + 0.5) end
      return string.format("#%02X%02X%02X", mix(fr, br), mix(fgr, bgr), mix(fb, bb))
   end
end

return util
