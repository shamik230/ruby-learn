# Выводит 10 рандомных символов каждые 0.1 секунд
loop { 10.times {print rand(30..120).chr}; sleep 0.1; print "\r" }