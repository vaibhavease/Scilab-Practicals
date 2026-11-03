function b = slib_base()
    b = "https://raw.githubusercontent.com/vaibhavease/Scilab-practicals/main/";
endfunction

function p = slib_download(name)
    p = TMPDIR + "/" + name;
    [r, status] = http_get(slib_base() + name, p, follow = %t);
    if status <> 200 then
        error("GitHub pe file nahi mili: " + name);
    end
endfunction

function list_practicals()
    p = slib_download("list.txt");
    mprintf("%s\n", mgetl(p));
endfunction

function showcode(id)
    id = convstr(string(id), "l");
    p = slib_download("practical" + id + ".sci");
    mprintf("%s\n", mgetl(p));
endfunction
