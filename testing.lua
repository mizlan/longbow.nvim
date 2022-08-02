str = [[aasadafagahajakalaqawaearatayauaiaoapazaxacavabanama;ssdsfsgshsjskslsqswsesrstsysusisospszsxscsvsbsnsms;ddfdgdhdjdkdldqdwdedrdtdydudidodpdzdxdcdvdbdndmd;ffgfhfjfkflfqfwfefrftfyfufifofpfzfxfcfvfbfnfmf;gghgjgkglgqgwgegrgtgygugigogpgzgxgcgvgbgngmg;hhjhkhlhqhwhehrhthyhuhihohphzhxhchvhbhnhmh;jjkjljqjwjejrjtjyjujijojpjzjxjcjvjbjnjmj;kklkqkwkekrktkykukikokpkzkxkckvkbknkmk;llqlwlelrltlylulilolplzlxlclvlblnlml;qqwqeqrqtqyquqiqoqpqzqxqcqvqbqnqmq;wwewrwtwywuwiwowpwzwxwcwvwbwnwmw;eereteyeueieoepezexecevebeneme;rrtryrurirorprzrxrcrvrbrnrmr;ttytutitotptztxtctvtbtntmt;yyuyiyoypyzyxycyvybynymy;uuiuoupuzuxucuvubunumu;iioipizixicivibinimi;oopozoxocovobonomo;ppzpxpcpvpbpnpmp;zzxzczvzbznzmz;xxcxvxbxnxmx;ccvcbcncmc;vvbvnvmv;bbnbmb;nnmn;mm;;AASADAFAGAHAJAKALAQAWAEARATAYAUAIAOAPAZAXACAVABANAMA:SSDSFSGSHSJSKSLSQSWSESRSTSYSUSISOSPSZSXSCSVSBSNSMS:DDFDGDHDJDKDLDQDWDEDRDTDYDUDIDODPDZDXDCDVDBDNDMD:FFGFHFJFKFLFQFWFEFRFTFYFUFIFOFPFZFXFCFVFBFNFMF:GGHGJGKGLGQGWGEGRGTGYGUGIGOGPGZGXGCGVGBGNGMG:HHJHKHLHQHWHEHRHTHYHUHIHOHPHZHXHCHVHBHNHMH:JJKJLJQJWJEJRJTJYJUJIJOJPJZJXJCJVJBJNJMJ:KKLKQKWKEKRKTKYKUKIKOKPKZKXKCKVKBKNKMK:LLQLWLELRLTLYLULILOLPLZLXLCLVLBLNLML:QQWQEQRQTQYQUQIQOQPQZQXQCQVQBQNQMQ:WWEWRWTWYWUWIWOWPWZWXWCWVWBWNWMW:EERETEYEUEIEOEPEZEXECEVEBENEME:RRTRYRURIRORPRZRXRCRVRBRNRMR:TTYTUTITOTPTZTXTCTVTBTNTMT:YYUYIYOYPYZYXYCYVYBYNYMY:UUIUOUPUZUXUCUVUBUNUMU:IIOIPIZIXICIVIBINIMI:OOPOZOXOCOVOBONOMO:PPZPXPCPVPBPNPMP:ZZXZCZVZBZNZMZ:XXCXVXBXNXMX:CCVCBCNCMC:VVBVNVMV:BBNBMB:NNMN:MM::]]
longbow_ns = vim.api.nvim_create_namespace('longbow')
ONE_INDEX = 1

function normal(s)
  vim.api.nvim_cmd({
    cmd = 'normal!',
    args = { s }
  }, {})
end
function report()
  normal('g^')
  local l_pos = vim.api.nvim_win_get_cursor(0)
  normal('g$')
  local r_pos = vim.api.nvim_win_get_cursor(0)
  print(vim.inspect(l_pos), vim.inspect(r_pos))
end

local	bruhdah = tonumber('3') + 7 +     3 

function to_pos(tup)
  return {
    line = tup[1],
    col = tup[2]
  }
end

function un_pos(pos)
  return { pos.line, pos.col }
end

function populate_window(seq)
  local bufnr = vim.api.nvim_get_current_buf()
  local winheight = vim.fn.winheight(0)
  local winbot = vim.fn.line('w$')
  -- TODO get horizontal bounds

  -- setting 'list' to true is required for the cursor to go to the first
  -- virtual column of a tab character instead of the last
  local list_opt_save = vim.api.nvim_win_get_option(0, 'list')
  vim.api.nvim_win_set_option(0, 'list', true)

  local winview = vim.fn.winsaveview()
  local str_idx = 1
  local mega_map = {}
  normal('H')
  for winline = 1, winheight do
    -- TODO: skip line if out-of-bounds (see get-horizontal-bound)
    if vim.fn.line('.') > winbot then break end

    normal('g$')
    local r_pos = to_pos(vim.api.nvim_win_get_cursor(0))
    local r_wcol = vim.fn.wincol()
    local r_col = r_pos.col
    normal('g^')
    -- FIXME: doesn't work properly when there's a TAB
    -- partially off the right edge of the screen
    local pos = to_pos(vim.api.nvim_win_get_cursor(0))
    local l_pos = pos
    local col = pos.col
    local virt_text, hl_mode
    local char, wcol, len, prev_pos
    local DO_BREAK = false

    while true do
      -- get current character cursor is on, may be overkill,
      -- taken from SO
      char = vim.fn.strcharpart(vim.fn.strpart(vim.fn.getline('.'), vim.fn.col('.') - 1), 0, 1)
      wcol = vim.fn.wincol()
      len = vim.fn.strdisplaywidth(char, vim.fn.wincol() - vim.fn.getwininfo(vim.fn.win_getid())[1].textoff - ONE_INDEX)
      local this_str = str:sub(str_idx, str_idx + len - ONE_INDEX)

      -- add previous to mega map
      local to_add = this_str
      if prev_pos then
        mega_map[str:sub(str_idx - 1, str_idx)] = prev_pos
      end
      for i = 1, #to_add - 1 do
        mega_map[to_add:sub(i, i + 2 - ONE_INDEX)] = pos -- chunks of two
      end

      str_idx = str_idx + len

      if char == ' ' or char == '\t' then
        hl_mode = 'combine'
        virt_text = { { this_str, 'Whitespace' } }
      else
        hl_mode = 'combine'
        virt_text = { { this_str } }
      end

      if col == r_col then -- ended
        DO_BREAK = true
        if col > l_pos.col then -- non-empty line
          if vim.fn.winwidth('.') > wcol then -- has space at end
            local virt_text_2 = { str:sub(str_idx, str_idx), 'Whitespace' }
            table.insert(virt_text, virt_text_2)
            mega_map[str:sub(str_idx - 1, str_idx)] = pos
            str_idx = str_idx + 1
          end
        end
      end

      vim.api.nvim_buf_set_extmark(0, longbow_ns, pos.line - ONE_INDEX, pos.col, {
        virt_text = virt_text,
        virt_text_pos = "overlay",
        hl_mode = hl_mode,
      })

      if DO_BREAK then
        break
      end

      normal('l')
      prev_pos = pos
      pos = to_pos(vim.api.nvim_win_get_cursor(0))
      prev_wcol = new_wcol
      col = pos.col
    end

    if vim.fn.line('.') >= winbot then break end
    -- TODO set curswant to left bound first
    normal('gj')
    ::nextline::
  end
  vim.fn.winrestview(winview)
  vim.cmd[[redraw!]]
  -- print(str_idx)

  local k1 = getchar_handler()
  local k2 = getchar_handler()

  local s = k1 .. k2

  vim.api.nvim_buf_clear_namespace(bufnr, longbow_ns, 0, -1)
  if mega_map[s] then
    vim.api.nvim_win_set_cursor(0, un_pos(mega_map[s]))
  end

  vim.api.nvim_win_set_option(0, 'list', list_opt_save)
end

function getchar_handler()
  local ok, key = pcall(vim.fn.getchar)
  if not ok then return nil end
  if type(key) == 'number' then
    local key_str = vim.fn.nr2char(key)
    return key_str
  end
  return nil
end
