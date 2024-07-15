local lang_maps = {
    arduino = {
        build = "arduino-cli compile --fqbn arduino:avr:uno %",
        exec = "arduino-cli upload -p /dev/ttyACM0 --fqbn arduino:avr:uno %",
    },
    c = { build = "gcc *.c -lm -g -o main", exec = "./main" },
    cpp = { 
        build = "mkdir -p build && cd build && cmake .. && make",  -- Updated build command
        exec = "cd build && ./main"  -- Updated exec command
    },
    python = { exec = "python %" },
}

for lang, data in pairs(lang_maps) do
    if data.build ~= nil then
        vim.api.nvim_create_autocmd(
            "FileType",
            { command = "nnoremap <Leader>b :!" .. data.build .. "<CR>", pattern = lang }
        )
    end

    vim.api.nvim_create_autocmd(
        "FileType",
        { command = "nnoremap <Leader>e :split<CR>:terminal " .. data.exec .. "<CR>", pattern = lang }
    )
end

