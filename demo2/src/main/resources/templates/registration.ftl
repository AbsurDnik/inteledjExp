
<#import "parts/common.ftl" as c>
<@c.page>
    <form action="/registration" method="post">

        <div>
            <label >User Name :
                <input type="text" name="username"  placeholder="Enter username">
            </label>
        </div>

        <div>
            <label>Password :
                <input type="password" name="password" placeholder="Password">
            </label>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <div><input type="submit" value="Create Account"/></div>

    </form>
</@c.page>