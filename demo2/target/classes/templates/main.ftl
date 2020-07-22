<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<@c.page>
    <h1>Success!</h1>
    <#if user??>
    <form action="/logout" method="post">
        <input type="submit" value="Sign Out"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
    </form>
    </#if>
    <TABLE WIDTH="50" BORDER="3">

        <TR>

            <th> Это уже таблица?

            </th>
            <th> Это уже таблица?

            </th>

            <#if user??>


            <th> <a href="/">Изменить</a>

            </th>
            <th> <a>удалить</a>

            </th>
            </#if>
        </TR>
        <TR>

            <th> Это уже таблица?

            </th>
            </th>
            <th> <a>Изменить</a>

            </th>
            <th> <a>удалить</a>

            </th>
        </TR>
        <TR>

            <th> Это уже таблица?

            </th>
            </th>
            <th> <a>Изменить</a>

            </th>
            <th> <a>удалить</a>

            </th>
        </TR>
        <TR>

            <th> Это уже таблица?

            </th>
            </th>
            <th> <a>Изменить</a>

            </th>
            <th> <a>удалить</a>

            </th>
        </TR>

    </TABLE>


</@c.page>