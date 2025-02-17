

titlePageInfo={
    departmentNum="unset",
    teacherDegree="unset",
    teacherName="unset",
    workType="unset",
    workName="unset",
    courseName="unset",
    workAuthor="unset",
    workAuthorGroup="unset",

}
print("titlePageInfo: ",titlePageInfo)
for k,v in pairs(titlePageInfo) do
    titlePageInfo[k]='\\textbackslash '..k
    define_latex_command(k,function (it)
        titlePageInfo[k]=it
    end)
    local getter="get"..string.upper(string.sub(k,1,1))..string.sub(k,2)
    print("k:",k," name:",getter)
    define_latex_command(getter,function ()
        tex.print(titlePageInfo[k])
    end)
end


