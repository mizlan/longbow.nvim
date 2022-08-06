local M = {}

M.no_shift_no_num_then_shift_no_num_str = [[aasadafagahajakalaqawaearatayauaiaoapazaxacavabanama;ssdsfsgshsjskslsqswsesrstsysusisospszsxscsvsbsnsms;ddfdgdhdjdkdldqdwdedrdtdydudidodpdzdxdcdvdbdndmd;ffgfhfjfkflfqfwfefrftfyfufifofpfzfxfcfvfbfnfmf;gghgjgkglgqgwgegrgtgygugigogpgzgxgcgvgbgngmg;hhjhkhlhqhwhehrhthyhuhihohphzhxhchvhbhnhmh;jjkjljqjwjejrjtjyjujijojpjzjxjcjvjbjnjmj;kklkqkwkekrktkykukikokpkzkxkckvkbknkmk;llqlwlelrltlylulilolplzlxlclvlblnlml;qqwqeqrqtqyquqiqoqpqzqxqcqvqbqnqmq;wwewrwtwywuwiwowpwzwxwcwvwbwnwmw;eereteyeueieoepezexecevebeneme;rrtryrurirorprzrxrcrvrbrnrmr;ttytutitotptztxtctvtbtntmt;yyuyiyoypyzyxycyvybynymy;uuiuoupuzuxucuvubunumu;iioipizixicivibinimi;oopozoxocovobonomo;ppzpxpcpvpbpnpmp;zzxzczvzbznzmz;xxcxvxbxnxmx;ccvcbcncmc;vvbvnvmv;bbnbmb;nnmn;mm;;AASADAFAGAHAJAKALAQAWAEARATAYAUAIAOAPAZAXACAVABANAMA:SSDSFSGSHSJSKSLSQSWSESRSTSYSUSISOSPSZSXSCSVSBSNSMS:DDFDGDHDJDKDLDQDWDEDRDTDYDUDIDODPDZDXDCDVDBDNDMD:FFGFHFJFKFLFQFWFEFRFTFYFUFIFOFPFZFXFCFVFBFNFMF:GGHGJGKGLGQGWGEGRGTGYGUGIGOGPGZGXGCGVGBGNGMG:HHJHKHLHQHWHEHRHTHYHUHIHOHPHZHXHCHVHBHNHMH:JJKJLJQJWJEJRJTJYJUJIJOJPJZJXJCJVJBJNJMJ:KKLKQKWKEKRKTKYKUKIKOKPKZKXKCKVKBKNKMK:LLQLWLELRLTLYLULILOLPLZLXLCLVLBLNLML:QQWQEQRQTQYQUQIQOQPQZQXQCQVQBQNQMQ:WWEWRWTWYWUWIWOWPWZWXWCWVWBWNWMW:EERETEYEUEIEOEPEZEXECEVEBENEME:RRTRYRURIRORPRZRXRCRVRBRNRMR:TTYTUTITOTPTZTXTCTVTBTNTMT:YYUYIYOYPYZYXYCYVYBYNYMY:UUIUOUPUZUXUCUVUBUNUMU:IIOIPIZIXICIVIBINIMI:OOPOZOXOCOVOBONOMO:PPZPXPCPVPBPNPMP:ZZXZCZVZBZNZMZ:XXCXVXBXNXMX:CCVCBCNCMC:VVBVNVMV:BBNBMB:NNMN:MM::]]
M.no_shift_no_num_str = [[aasadafagahajakalaqawaearatayauaiaoapazaxacavabanama;ssdsfsgshsjskslsqswsesrstsysusisospszsxscsvsbsnsms;ddfdgdhdjdkdldqdwdedrdtdydudidodpdzdxdcdvdbdndmd;ffgfhfjfkflfqfwfefrftfyfufifofpfzfxfcfvfbfnfmf;gghgjgkglgqgwgegrgtgygugigogpgzgxgcgvgbgngmg;hhjhkhlhqhwhehrhthyhuhihohphzhxhchvhbhnhmh;jjkjljqjwjejrjtjyjujijojpjzjxjcjvjbjnjmj;kklkqkwkekrktkykukikokpkzkxkckvkbknkmk;llqlwlelrltlylulilolplzlxlclvlblnlml;qqwqeqrqtqyquqiqoqpqzqxqcqvqbqnqmq;wwewrwtwywuwiwowpwzwxwcwvwbwnwmw;eereteyeueieoepezexecevebeneme;rrtryrurirorprzrxrcrvrbrnrmr;ttytutitotptztxtctvtbtntmt;yyuyiyoypyzyxycyvybynymy;uuiuoupuzuxucuvubunumu;iioipizixicivibinimi;oopozoxocovobonomo;ppzpxpcpvpbpnpmp;zzxzczvzbznzmz;xxcxvxbxnxmx;ccvcbcncmc;vvbvnvmv;bbnbmb;nnmn;mm;;]]
M.shift_no_num_str = [[aasadafagahajakalaqawaearatayauaiaoapazaxacavabanama;aAaSaDaFaGaHaJaKaLaQaWaEaRaTaYaUaIaOaPaZaXaCaVaBaNaMa:ssdsfsgshsjskslsqswsesrstsysusisospszsxscsvsbsnsms;sAsSsDsFsGsHsJsKsLsQsWsEsRsTsYsUsIsOsPsZsXsCsVsBsNsMs:ddfdgdhdjdkdldqdwdedrdtdydudidodpdzdxdcdvdbdndmd;dAdSdDdFdGdHdJdKdLdQdWdEdRdTdYdUdIdOdPdZdXdCdVdBdNdMd:ffgfhfjfkflfqfwfefrftfyfufifofpfzfxfcfvfbfnfmf;fAfSfDfFfGfHfJfKfLfQfWfEfRfTfYfUfIfOfPfZfXfCfVfBfNfMf:gghgjgkglgqgwgegrgtgygugigogpgzgxgcgvgbgngmg;gAgSgDgFgGgHgJgKgLgQgWgEgRgTgYgUgIgOgPgZgXgCgVgBgNgMg:hhjhkhlhqhwhehrhthyhuhihohphzhxhchvhbhnhmh;hAhShDhFhGhHhJhKhLhQhWhEhRhThYhUhIhOhPhZhXhChVhBhNhMh:jjkjljqjwjejrjtjyjujijojpjzjxjcjvjbjnjmj;jAjSjDjFjGjHjJjKjLjQjWjEjRjTjYjUjIjOjPjZjXjCjVjBjNjMj:kklkqkwkekrktkykukikokpkzkxkckvkbknkmk;kAkSkDkFkGkHkJkKkLkQkWkEkRkTkYkUkIkOkPkZkXkCkVkBkNkMk:llqlwlelrltlylulilolplzlxlclvlblnlml;lAlSlDlFlGlHlJlKlLlQlWlElRlTlYlUlIlOlPlZlXlClVlBlNlMl:qqwqeqrqtqyquqiqoqpqzqxqcqvqbqnqmq;qAqSqDqFqGqHqJqKqLqQqWqEqRqTqYqUqIqOqPqZqXqCqVqBqNqMq:wwewrwtwywuwiwowpwzwxwcwvwbwnwmw;wAwSwDwFwGwHwJwKwLwQwWwEwRwTwYwUwIwOwPwZwXwCwVwBwNwMw:eereteyeueieoepezexecevebeneme;eAeSeDeFeGeHeJeKeLeQeWeEeReTeYeUeIeOePeZeXeCeVeBeNeMe:rrtryrurirorprzrxrcrvrbrnrmr;rArSrDrFrGrHrJrKrLrQrWrErRrTrYrUrIrOrPrZrXrCrVrBrNrMr:ttytutitotptztxtctvtbtntmt;tAtStDtFtGtHtJtKtLtQtWtEtRtTtYtUtItOtPtZtXtCtVtBtNtMt:yyuyiyoypyzyxycyvybynymy;yAySyDyFyGyHyJyKyLyQyWyEyRyTyYyUyIyOyPyZyXyCyVyByNyMy:uuiuoupuzuxucuvubunumu;uAuSuDuFuGuHuJuKuLuQuWuEuRuTuYuUuIuOuPuZuXuCuVuBuNuMu:iioipizixicivibinimi;iAiSiDiFiGiHiJiKiLiQiWiEiRiTiYiUiIiOiPiZiXiCiViBiNiMi:oopozoxocovobonomo;oAoSoDoFoGoHoJoKoLoQoWoEoRoToYoUoIoOoPoZoXoCoVoBoNoMo:ppzpxpcpvpbpnpmp;pApSpDpFpGpHpJpKpLpQpWpEpRpTpYpUpIpOpPpZpXpCpVpBpNpMp:zzxzczvzbznzmz;zAzSzDzFzGzHzJzKzLzQzWzEzRzTzYzUzIzOzPzZzXzCzVzBzNzMz:xxcxvxbxnxmx;xAxSxDxFxGxHxJxKxLxQxWxExRxTxYxUxIxOxPxZxXxCxVxBxNxMx:ccvcbcncmc;cAcScDcFcGcHcJcKcLcQcWcEcRcTcYcUcIcOcPcZcXcCcVcBcNcMc:vvbvnvmv;vAvSvDvFvGvHvJvKvLvQvWvEvRvTvYvUvIvOvPvZvXvCvVvBvNvMv:bbnbmb;bAbSbDbFbGbHbJbKbLbQbWbEbRbTbYbUbIbObPbZbXbCbVbBbNbMb:nnmn;nAnSnDnFnGnHnJnKnLnQnWnEnRnTnYnUnInOnPnZnXnCnVnBnNnMn:mm;mAmSmDmFmGmHmJmKmLmQmWmEmRmTmYmUmImOmPmZmXmCmVmBmNmMm:;;A;S;D;F;G;H;J;K;L;Q;W;E;R;T;Y;U;I;O;P;Z;X;C;V;B;N;M;:AASADAFAGAHAJAKALAQAWAEARATAYAUAIAOAPAZAXACAVABANAMA:SSDSFSGSHSJSKSLSQSWSESRSTSYSUSISOSPSZSXSCSVSBSNSMS:DDFDGDHDJDKDLDQDWDEDRDTDYDUDIDODPDZDXDCDVDBDNDMD:FFGFHFJFKFLFQFWFEFRFTFYFUFIFOFPFZFXFCFVFBFNFMF:GGHGJGKGLGQGWGEGRGTGYGUGIGOGPGZGXGCGVGBGNGMG:HHJHKHLHQHWHEHRHTHYHUHIHOHPHZHXHCHVHBHNHMH:JJKJLJQJWJEJRJTJYJUJIJOJPJZJXJCJVJBJNJMJ:KKLKQKWKEKRKTKYKUKIKOKPKZKXKCKVKBKNKMK:LLQLWLELRLTLYLULILOLPLZLXLCLVLBLNLML:QQWQEQRQTQYQUQIQOQPQZQXQCQVQBQNQMQ:WWEWRWTWYWUWIWOWPWZWXWCWVWBWNWMW:EERETEYEUEIEOEPEZEXECEVEBENEME:RRTRYRURIRORPRZRXRCRVRBRNRMR:TTYTUTITOTPTZTXTCTVTBTNTMT:YYUYIYOYPYZYXYCYVYBYNYMY:UUIUOUPUZUXUCUVUBUNUMU:IIOIPIZIXICIVIBINIMI:OOPOZOXOCOVOBONOMO:PPZPXPCPVPBPNPMP:ZZXZCZVZBZNZMZ:XXCXVXBXNXMX:CCVCBCNCMC:VVBVNVMV:BBNBMB:NNMN:MM::]]
M.no_shift_special_chars_num_str = [[aasadafagahajakalaqawaearatayauaiaoapazaxacavabanama;a1a2a3a4a5a6a7a8a9a0a-a=ssdsfsgshsjskslsqswsesrstsysusisospszsxscsvsbsnsms;s1s2s3s4s5s6s7s8s9s0s-s=ddfdgdhdjdkdldqdwdedrdtdydudidodpdzdxdcdvdbdndmd;d1d2d3d4d5d6d7d8d9d0d-d=ffgfhfjfkflfqfwfefrftfyfufifofpfzfxfcfvfbfnfmf;f1f2f3f4f5f6f7f8f9f0f-f=gghgjgkglgqgwgegrgtgygugigogpgzgxgcgvgbgngmg;g1g2g3g4g5g6g7g8g9g0g-g=hhjhkhlhqhwhehrhthyhuhihohphzhxhchvhbhnhmh;h1h2h3h4h5h6h7h8h9h0h-h=jjkjljqjwjejrjtjyjujijojpjzjxjcjvjbjnjmj;j1j2j3j4j5j6j7j8j9j0j-j=kklkqkwkekrktkykukikokpkzkxkckvkbknkmk;k1k2k3k4k5k6k7k8k9k0k-k=llqlwlelrltlylulilolplzlxlclvlblnlml;l1l2l3l4l5l6l7l8l9l0l-l=qqwqeqrqtqyquqiqoqpqzqxqcqvqbqnqmq;q1q2q3q4q5q6q7q8q9q0q-q=wwewrwtwywuwiwowpwzwxwcwvwbwnwmw;w1w2w3w4w5w6w7w8w9w0w-w=eereteyeueieoepezexecevebeneme;e1e2e3e4e5e6e7e8e9e0e-e=rrtryrurirorprzrxrcrvrbrnrmr;r1r2r3r4r5r6r7r8r9r0r-r=ttytutitotptztxtctvtbtntmt;t1t2t3t4t5t6t7t8t9t0t-t=yyuyiyoypyzyxycyvybynymy;y1y2y3y4y5y6y7y8y9y0y-y=uuiuoupuzuxucuvubunumu;u1u2u3u4u5u6u7u8u9u0u-u=iioipizixicivibinimi;i1i2i3i4i5i6i7i8i9i0i-i=oopozoxocovobonomo;o1o2o3o4o5o6o7o8o9o0o-o=ppzpxpcpvpbpnpmp;p1p2p3p4p5p6p7p8p9p0p-p=zzxzczvzbznzmz;z1z2z3z4z5z6z7z8z9z0z-z=xxcxvxbxnxmx;x1x2x3x4x5x6x7x8x9x0x-x=ccvcbcncmc;c1c2c3c4c5c6c7c8c9c0c-c=vvbvnvmv;v1v2v3v4v5v6v7v8v9v0v-v=bbnbmb;b1b2b3b4b5b6b7b8b9b0b-b=nnmn;n1n2n3n4n5n6n7n8n9n0n-n=mm;m1m2m3m4m5m6m7m8m9m0m-m=;;1;2;3;4;5;6;7;8;9;0;-;=11213141516171819101-1=223242526272829202-2=3343536373839303-3=44546474849404-4=556575859505-5=6676869606-6=77879707-7=889808-8=9909-9=00-0=--==]]

M.str = M.no_shift_no_num_then_shift_no_num_str

M.longbow_ns = vim.api.nvim_create_namespace('longbow')

local function prequire(m) 
  local ok, err = pcall(require, m) 
  if not ok then return nil, err end
  return err
end

function M.normal(s)
  vim.api.nvim_cmd({
    cmd = 'normal!',
    args = { s }
  }, {})
end

function M.run(str)
  local str = str or M.str

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
  M.normal('H')
  for winline = 1, winheight do
    -- TODO: skip line if out-of-bounds (see get-horizontal-bound)
    -- if vim.fn.line('.') > winbot then break end

    M.normal('g$')
    local r_pos = vim.api.nvim_win_get_cursor(0)
    local r_wcol = vim.fn.wincol()
    local r_col = r_pos[2]
    M.normal('g^')
    -- FIXME: doesn't work properly when there's a TAB
    -- partially off the right edge of the screen
    local pos = vim.api.nvim_win_get_cursor(0)
    local l_pos = pos
    local col = pos[2]
    local virt_text, hl_mode
    local char, wcol, len, prev_pos
    local DO_BREAK = false

    while true do
      -- get current character cursor is on, may be overkill,
      -- taken from SO
      char = vim.fn.strcharpart(vim.fn.strpart(vim.fn.getline('.'), vim.fn.col('.') - 1), 0, 1)
      wcol = vim.fn.wincol()
      len = vim.fn.strdisplaywidth(char, vim.fn.wincol() - vim.fn.getwininfo(vim.fn.win_getid())[1].textoff - 1)
      local this_str = str:sub(str_idx, str_idx + len - 1)

      -- add previous to mega map
      local to_add = this_str
      if prev_pos then
        mega_map[str:sub(str_idx - 1, str_idx)] = prev_pos
      end
      for i = 1, #to_add - 1 do
        mega_map[to_add:sub(i, i + 1)] = pos -- chunks of two
      end

      str_idx = str_idx + len

      local hl_mode = 'combine'
      if char == ' ' or char == '\t' then

        hl_mode = 'combine'
        virt_text = { { this_str, 'Whitespace' } }

      elseif len == 1 then

        virt_text = { { this_str } }

      else
        -- attempt to extrapolate highlight group over the virtual char length

        local highlighter_m = require('vim.treesitter.highlighter')
        local tsplayground_utils_m = prequire('nvim-treesitter-playground.utils')
        if tsplayground_utils_m and highlighter_m.active[bufnr] then

          local matches = tsplayground_utils_m.get_hl_groups_at_position(bufnr, pos[1] - 1, pos[2])
          local match = matches[#matches]
          if match then
            hl_mode = 'replace'
            virt_text = { { this_str, match.general } }
          else
            virt_text = { { this_str } }
          end

        else
          if vim.b.current_syntax then
            local s = vim.fn.synstack(pos[1], pos[2])[1]
            if s then
              hl_mode = 'replace'
              local hl = vim.fn.synIDattr(s, "name")
              virt_text = { { this_str, hl } }
            else
              virt_text = { { this_str } }
            end
          else
            virt_text = { { this_str } }
          end
        end
      end

      if col == r_col then -- ended
        DO_BREAK = true
        if col > l_pos[2] then -- non-empty line
          if vim.fn.winwidth('.') > wcol then -- has space at end
            local virt_text_2 = { str:sub(str_idx, str_idx), 'Whitespace' }
            table.insert(virt_text, virt_text_2)
            mega_map[str:sub(str_idx - 1, str_idx)] = pos
            str_idx = str_idx + 1
          end
        end
      end

      vim.api.nvim_buf_set_extmark(0, M.longbow_ns, pos[1] - 1, pos[2], {
        virt_text = virt_text,
        virt_text_pos = "overlay",
        hl_mode = hl_mode,
      })

      if DO_BREAK then
        break
      end

      M.normal('l')
      prev_pos = pos
      pos = vim.api.nvim_win_get_cursor(0)
      col = pos[2]
      -- vim.cmd[[redraw!]]
    end

    if vim.fn.line('.') >= winbot then break end
    -- TODO set curswant to left bound first
    M.normal('gj')
    ::nextline::
  end
  vim.fn.winrestview(winview)
  vim.api.nvim_win_set_option(0, 'list', list_opt_save)
  vim.cmd[[redraw!]]

  local k1 = M.getchar_handler()
  local k2 = M.getchar_handler()

  local s = k1 .. k2

  if mega_map[s] then
    vim.api.nvim_win_set_cursor(0, mega_map[s])
  end

  ::cleanup::
  vim.api.nvim_buf_clear_namespace(bufnr, M.longbow_ns, 0, -1)
end

function M.getchar_handler()
  local ok, key = pcall(vim.fn.getchar)
  if not ok then return nil end
  if type(key) == 'number' then
    local key_str = vim.fn.nr2char(key)
    return key_str
  end
  return nil
end

return M
