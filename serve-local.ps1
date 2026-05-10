$env:Path = 'C:\Ruby40-x64\bin;' + $env:Path
$env:RUBYOPT = '-r./_plugins/ruby4_compat'

Set-Location $PSScriptRoot
bundle exec jekyll serve --host 127.0.0.1 --port 4000 --livereload
