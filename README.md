<p id="simbol" align="center">
	<img src="https://icons.iconarchive.com/icons/iconshock/real-vista-development/128/ruby-icon.png" height="120px"/>
	<h1 align="center"> &lt;ruby&gt; Todolist &lt;/ruby&gt; </h1>
</p>

O Todolist é uma ferramenta que visa auxiliar seus usuários a obterem mais controle sobre suas tarefas cotidianas. Expressas em suas respectivas categorias, em cada categoria, pode-se observar nome, descrição e quantidade de tarefas concluídas e inconcluídas. Para além disso, dentro de uma categoria, pode-se obter mais detalhes de suas tarefas associadas uma vez que, em cada tarefa é possível observar seu: título; descrição; barra de tempo restante; data de validade; data de criação; bem como, número de dias disponíveis. Visando obter mais controle em prol dos usuários, o Todolist também conta com um filtro de exibição de tarefas, uma vez que, elas ficam dispostas através de não só em níveis de prioridade (baixo, médio e alto), mas também ficam dispostas em termos de estarem concluídas ou não.

## Funcionalidades
- USUÁRIO
  - criação; acesso; edição; exclusão; recuperação;
- CATEGORIA
  - criação; acesso; edição; exclusão;
- TAREFA
  - criação; acesso; edição; exclusão;

## Dados
- USUÁRIO
  - email; senha; categorias;
- CATEGORIA
  - nome; descrição; usuário;
- TAREFA
  - titulo; descrição; estado de completude (completo/incompleto); prioridade (baixa, média, alta); data de criação; data de validade; categoria;

## Correções
- Aplicação do Bootstrap em formulários através do 'simple form';
- Prioridades como enum;
- Falha na associação de tarefas as categorias;
- Utilização do pudint para garantir que usuários criem, acessem, editem e excluam apenas suas tarefas e categorias;
- Overflow de layout de categorias;

## Ferramentas
- [Ruby 3.0.1][00]
- [Rails 7.1.2][01]
- [SQLite3 1.4][02]
- [Node 20.9.0][03]
- [Yarn 1.22.21][04]
- [Simple Form 5.3][05]
- [Devise 4.9][06]
- [Pundit 2.3][07]
- [Letter Opener 1.8][08]
- [Rspec 3.1.0][09]
- [Bootstrap 5.3][10]

[//]: #URL
[00]: https://www.ruby-lang.org/en/news/2021/04/05/ruby-3-0-1-released
[01]: https://rubyonrails.org/2023/11/10/Rails-7-1-2-has-been-released
[02]: https://rubygems.org/gems/sqlite3/versions/1.4.0
[03]: https://nodejs.org/en/blog/release/v20.9.0
[04]: https://yarnpkg.com/package?name=yarn&version=1.22.21
[05]: https://rubygems.org/gems/simple_form/versions/5.3.0
[06]: https://rubygems.org/gems/devise/versions/4.9.0
[07]: https://rubygems.org/gems/pundit/versions/2.3.0
[08]: https://rubygems.org/gems/letter_opener/versions/1.8.0
[09]: https://rubygems.org/gems/rspec-rails/versions/3.1.0
[10]: https://getbootstrap.com/docs/5.3

## Capturas de Tela

<p id="simbol" align="center">
	<img src="https://i.imgur.com/eSQLafS.png" height="600px"/>
	<img src="https://i.imgur.com/gwW2Aim.png" height="600px"/>
	<img src="https://i.imgur.com/mgbJwsl.png" height="600px"/>
	<img src="https://i.imgur.com/60bX7wh.png" height="600px"/>
	<img src="https://i.imgur.com/6sU0HJr.png" height="600px"/>
</p>

<p align="center"><em> Copyleft © 2023. GPLv3 - Author: Everton Bruno Silva dos Santos. </em></p>
