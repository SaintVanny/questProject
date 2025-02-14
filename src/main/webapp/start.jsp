<%@ page import="quest.Area" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Text Quest</title>
    <link rel="stylesheet" type="text/css" href="static/style.css">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

<c:set var="BADLANDS" value="<%=Area.BADLANDS%>"/>
<c:set var="FOREST" value="<%=Area.FOREST%>"/>
<c:set var="CAVE" value="<%=Area.CAVE%>"/>
<c:set var="DEEPFOREST" value="<%=Area.DEEPFOREST%>"/>
<c:set var="WATERFALL" value="<%=Area.WATERFALL%>"/>
<c:set var="PORTAL" value="<%=Area.PORTAL%>"/>

<c:if test="${area == BADLANDS}">
    <h1>Пустоши</h1>
    <hr>
    <p>Пустоши — мрачный, безжизненный край, раскинувшийся до самого горизонта. Земля здесь</p>
    <p>потрескалась от зноя, испещрена глубокими расщелинами, а в воздухе вечно витает едкий запах</p>
    <p>пепла. Когда-то здесь шумели леса или стояли города, но теперь лишь редкие костяные останки</p>
    <p>зданий напоминают о прошлом. Жестокий ветер носит по пустынной равнине клочья пепла и</p>
    <p>песка, временами поднимая их в спиральные вихри. Вдалеке виднеются силуэты ржавых остовов</p>
    <p>машин и высохших деревьев, словно застывших в последнем отчаянном жесте.</p>
</c:if>

<c:if test="${area == FOREST}">
    <h1>Лес</h1>
    <hr>
    <p>Лес раскинулся величественной стеной, укрывая землю плотным пологом переплетённых крон.</p>
    <p>Здесь всегда царит полумрак, даже в полдень солнечные лучи с трудом пробиваются сквозь</p>
    <p>густую листву. Воздух наполнен ароматом влажной земли, хвои и прелой листвы, а где-то в</p>
    <p>глубине слышатся дальние крики птиц и шелест невидимых существ. Деревья здесь старые, с</p>
    <p>узловатыми корнями, пробившимися сквозь камни, а мох покрывает их стволы зелёным ковром.</p>
    <p>Иногда между стволами мелькают странные тени, и кажется, что лес наблюдает за каждым шагом путника.</p>
</c:if>

<c:if test="${area == CAVE}">
    <h1>Пещера</h1>
    <hr>
    <p>Герой делает шаг в пещеру, и прохладный воздух окутывает его, пахнущий сыростью и</p>
    <p>затхлостью. Свет факела дрожит на стенах, освещая причудливые тени сталактитов. Вдалеке гулко</p>
    <p>капает вода, а где-то в темноте раздаётся шорох — здесь кто-то есть. Под ногой что-то хрустит —</p>
    <p>камень или кость? В глубине мерцают красные огоньки, наблюдая за незваным гостем.</p>
</c:if>

<c:if test="${area == DEEPFOREST}">
    <h1>Лесная чаща</h1>
    <hr>
    <p>Герой углубляется в лесную чащу, где свет почти не пробивается сквозь плотные кроны. Воздух</p>
    <p>густ с запахом влажной земли, прелых листьев и древесной смолы. Ветки царапают одежду, корни</p>
    <p>сплетаются под ногами, вынуждая идти осторожно. В тишине слышится лишь далёкий крик птицы</p>
    <p>да шелест листвы — или это кто-то прячется в зарослях? Тени между деревьями кажутся</p>
    <p>движущимися, и лес словно затаил дыхание, наблюдая за чужаком.</p>
</c:if>

<c:if test="${area == WATERFALL}">
    <h1>Водопад</h1>
    <hr>
    <p>Герой выходит к водопаду, и оглушительный шум падающей воды заполняет всё вокруг. Мощные</p>
    <p>потоки с грохотом обрушиваются вниз, разбиваясь о скалы и поднимая прохладную дымку.</p>
    <p>Воздух здесь свежий, пропитанный влагой и запахом мокрого камня. Радужные блики танцуют в</p>
    <p>каплях, зависших в воздухе, но за водяной завесой смутно виднеется тёмный проход. Вода</p>
    <p>скрывает тайны, и кажется, что за водопадом что-то важное.</p>
</c:if>

<c:if test="${area == PORTAL}">
    <h1>Портал</h1>
    <hr>
    <p>Герой выходит к порталу — мерцающему разлому в самой ткани реальности. Вокруг него</p>
    <p>искрятся вихри энергии, раскалывая воздух треском электрических разрядов. Земля под ногами</p>
    <p>дрожит, словно сопротивляясь чуждой силе. Внутри портала клубится густой туман, сквозь</p>
    <p>который едва различимы смутные образы и неведомые миры. Сделав шаг, герой уже не сможет</p>
    <p>вернуться — впереди его ждёт неизведанное.</p>
</c:if>

<div id="options-container">
    <form id="options-form">
        <c:if test="${health > 0 && area != PORTAL}">
            <button type="button" class="button" onclick="selectOption('explore')">Исследовать</button>
            <button type="button" class="button" onclick="selectOption('searchFood')">Найти еду</button>
        </c:if>

        <c:if test="${health > 0 && area == BADLANDS}">
            <button type="button" class="button" onclick="selectOption('forest')">Идти к лесу</button>
            <button type="button" class="button" onclick="selectOption('cave')">Спуститься в пещеру</button>
        </c:if>

        <c:if test="${health > 0 && area == FOREST}">
            <button type="button" class="button" onclick="selectOption('deepForest')">Углубиться в чащу леса</button>
            <button type="button" class="button" onclick="selectOption('waterfall')">Идти к водопаду</button>
            <button type="button" class="button" onclick="selectOption('badlands')">Вернуться в пустоши</button>
        </c:if>

        <c:if test="${health > 0 && area == CAVE}">
            <button type="button" class="button" onclick="selectOption('badlands')">Вернуться в пустоши</button>
        </c:if>

        <c:if test="${health > 0 && area == DEEPFOREST}">
            <button type="button" class="button" onclick="selectOption('waterfall')">Идти к водопаду</button>
            <button type="button" class="button" onclick="selectOption('forest')">Идти к краю леса</button>
        </c:if>

        <c:if test="${health > 0 && area == WATERFALL}">
            <button type="button" class="button" onclick="selectOption('forest')">Идти к краю леса</button>
            <button type="button" class="button" onclick="selectOption('deepForest')">Идти в чащу леса</button>
        </c:if>

        <c:if test="${portalFound == true}">
            <button type="button" class="button" onclick="selectOption('portal')">Войти в портал</button>
        </c:if>

        <c:if test="${health > 0 && area == PORTAL}">
            <c:if test="${keyFound == true && id == true}">
                <button type="button" class="button" onclick="selectOption('win')">Активировать портал</button>
            </c:if>
            <button type="button" class="button" onclick="selectOption('waterfall')">Вернуться к водопаду</button>
        </c:if>
    </form>
</div>


</div>
<div id="story-container">
    <%--    <p>Здоровье:    <span class="hero-health <%= (int)session.getAttribute("health") < 30 ? "low-health" : "" %>"></p>--%>
    <c:if test="${keyFound == true}">
        <p>Вы нашли таинственный ключ, наверняка им можно открыть что-то ценное.</p>
    </c:if>
    <c:if test="${toolFound == true}">
        <p>Вы подобрали револьвер, теперь есть шансы против хищников</p>
    </c:if>
    <c:if test="${area ==CAVE && toolFound == false}">
        <p>Вас надгрыз пещерный харек</p>
    </c:if>
    <c:if test="${area ==DEEPFOREST && toolFound == false}">
        <p>Вас серьезно поломал медведь, как ДиКаприо в "Выжившем"</p>
    </c:if>
    <c:if test="${area ==CAVE && toolFound == true}">
        <p>Пещерный харек собрался надгрызть вас, но вы были быстрее</p>
    </c:if>
    <c:if test="${area ==DEEPFOREST && toolFound == true}">
        <p>Медведь получил дозу свенца, но успел вас обматерить</p>
    </c:if>
    <c:if test="${area ==PORTAL && portalFound == true}">
        <p>Вы нашли проход в портал.</p>
    </c:if>
    <c:if test="${area ==PORTAL && keyFound == false}">
        <p>Вы нашли вход в портал, он закрыт на амбарный замок</p>
    </c:if>
    <c:if test="${health <= 0}">
        <p>Похоже здоровье вас подвело, вам нужен стационар</p>
    </c:if>
    <c:if test="${area ==DEEPFOREST && toolFound == true}">
        <p>Задание выполнено, вы в шоколаде</p>
    </c:if>

</div>

<script>
    function restart() {
        $.ajax({
            url: 'restart',
            type: 'POST',
            async: false,
                success: function () {
                location.reload();
                }
            });

    }
    function selectOption(action) {
        $.ajax({
            url: 'start',
            type: 'POST',
            data: {action: action},
            success: function () {
                location.reload();
            }
        });

    }

</script>

</body>
</html>
