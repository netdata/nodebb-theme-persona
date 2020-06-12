<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="{../name}">

	<div class="content col-xs-12 <!-- IF config.hideCategoryLastPost -->col-md-10 col-sm-12<!-- ELSE -->col-md-7 col-sm-9<!-- ENDIF config.hideCategoryLastPost -->">
		<div class="icon pull-left" style="{function.generateCategoryBackground}">
			<i class="fa fa-fw {../icon}"></i>
		</div>

		<h2 class="title">
			<!-- IMPORT partials/categories/link.tpl -->
		</h2>
		<div>
			<!-- IF ../descriptionParsed -->
			<div class="description">
				{../descriptionParsed}
			</div>
			<!-- ENDIF ../descriptionParsed -->
			<!-- IF !config.hideSubCategories -->
			{function.generateChildrenCategories}
			<!-- ENDIF !config.hideSubCategories -->
		</div>
		<span class="visible-xs pull-right">
			<!-- IF ../teaser.timestampISO -->
			<a class="permalink" href="{../teaser.url}">
				<small class="timeago" title="{../teaser.timestampISO}"></small>
			</a>
			<!-- ENDIF ../teaser.timestampISO -->
		</span>
		<!-- IF !../link -->
		<div class="col-md-2 hidden-sm hidden-xs stats">
			<img src="/plugins/nodebb-theme-persona-netdata/images/topics.svg"/>
			<span class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}</span>
			<small>[[global:topics]]</small>
		</div>
		<div class="col-md-2 hidden-sm hidden-xs stats">
			<img src="/plugins/nodebb-theme-persona-netdata/images/posts.svg"/>
			<span class="{../unread-class} human-readable-number" title="{../totalPostCount}">{../totalPostCount}</span>
			<small>[[global:posts]]</small>
		</div>
		<!-- ENDIF !../link -->
	</div>
	<!-- IF !../link -->
	<!-- IF !config.hideCategoryLastPost -->
	<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
		<!-- IMPORT partials/categories/lastpost.tpl -->
	</div>
	<!-- ENDIF !config.hideCategoryLastPost -->
	<!-- ENDIF !../link -->
</li>
