<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>

  <xsl:template match="map">
    <xsl:element name="document">
      <xsl:apply-templates select="node"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="node">
    <xsl:choose>
      <xsl:when test="parent::map">
	<header>
	    <xsl:apply-templates select="//node[@ID='authors']"/>
	    <dates>
	      <creation><xsl:value-of select="//node[@ID='creation_entry']/@TEXT"/></creation>
	      <validation><xsl:value-of select="//node[@ID='update_entry']/@TEXT"/></validation>
	    </dates>
	    <appname></appname>
	    <desc></desc>
	    <release></release>
	    <licenseid></licenseid>
	    <licensedesc></licensedesc>
	    <url></url>
	    <demourl></demourl>
	    <language><xsl:value-of select="//node[@ID='language_entry']/@TEXT"/></language>
	    <qsosappname></qsosappname>
	    <qsosformat>1.0</qsosformat>
	    <qsosspecificformat><xsl:value-of select="//node[@ID='version_entry']/@TEXT"/></qsosspecificformat>
	    <qsosappfamily><xsl:value-of select="@TEXT"/></qsosappfamily>
	</header>
	<xsl:apply-templates select="node"/>
      </xsl:when>
      <xsl:when test="./@ID='maturity'">
	<section name="maturity" title="Maturity">
	  <desc>Maturity of the project in charge of the product's development and maintenance</desc>
	  <element name="legacy" title="Legacy">
	    <desc>Project's history and heritage</desc>
	    <element name="age" title="Age">
	      <desc0>Less than three months</desc0>
	      <desc1>between three months and three years</desc1>
	      <desc2>More than three years</desc2>
	      <comment/>
	      <score/>
	    </element>
	    <element name="historyknowproblems" title="Historique">
	      <desc0>The software has many problems which can be prohibitive</desc0>
	      <desc1>No major crisis, or unknown history</desc1>
	      <desc2>Good past experience in crisis management</desc2>
	      <comment/>
	      <score/>
	    </element>
	    <element name="developersidentificationturnover" title="Core team">
	      <desc0>Very few identified croe developers</desc0>
	      <desc1>Few active core developers</desc1>
	      <desc2>Important core development team identified</desc2>
	      <comment/>
	      <score/>
	    </element>
	    <element name="popularity" title="Popularity">
	      <desc0>Very few identified users</desc0>
	      <desc1>Usage can be detected</desc1>
	      <desc2>Many known users and references</desc2>
	      <comment/>
	      <score/>
	    </element>
	  </element>
	  <element name="activity" title="Activity">
	    <desc>Activity inside and around the project</desc>
	    <element name="contributingcommunity" title="Contributing community">
	      <desc0>No real community nor activity (forum, mailing list...)</desc0>
	      <desc1>Community with significant activity</desc1>
	      <desc2>Strong community with vivid activity in forums, with many contributors and supporters</desc2>
	      <comment/>
	      <score/>
	    </element>
	    <element name="activityonbugs" title="Activity on bugs">
	      <desc0>Low reactivity in forums and mailing lists, or no mention about bugfixes in release notes</desc0>
	      <desc1>Existing activity but without any clearly defined process or with long resolution times</desc1>
	      <desc2>Strong reactivity based on roles and task assignments</desc2>
	      <comment/>
	      <score/>
	    </element>
	    <element name="activityonfunctionalities" title="Activity on features">
	      <desc0>Few or no new features</desc0>
	      <desc1>Product's evolution is led by a dedicated team or by users, but without a clearly stated process</desc1>
	      <desc2>Feature request process is industiralized, an associated roadmap is available</desc2>
	      <comment/>
	      <score/>
	    </element>
	    <element name="activityonreleases" title="Activity on releases/versions">
	      <desc0>Very low activity on the production or development versions (alpha, beta)</desc0>
	      <desc1>Activity on production or development versions (alpha, beta), with frequent minor corrective versions</desc1>
	      <desc2>Important activity with frequent corrective versions and planned major versions linked with the roadmap</desc2>
	      <comment/>
	      <score/>
	    </element>
	  </element>
	  <element name="strategy" title="Governance">
	    <desc>Project Strategy</desc>
	    <element name="copyrightowners" title="Copyright owners">
	      <desc0>Rights are held by a few individuals or commercial entities</desc0>
	      <desc1>Rights are uniformly held by many individuals</desc1>
	      <desc2>Rights are held by a legal entity or a foundation in which the community trust (eg FSF, Apache, ObjectWeb)</desc2>
	      <comment/>
	      <score/>
	    </element>
	    <element name="roadmap" title="Roadmap">
	      <desc0>No roadmap published</desc0>
	      <desc1>Roadmap without planning</desc1>
	      <desc2>Versioned roadmap with planning and delay measurements</desc2>
	      <comment/>
	      <score/>
	    </element>
	    <element name="ID_740641571" title="Project management">
	      <desc0>No clear and apparent project management</desc0>
	      <desc1>Project managed by an individual or a single commercial entity</desc1>
	      <desc2>strong independance of core team, rights held by a recognized entity</desc2>
	      <comment/>
	      <score/>
	    </element>
	    <element name="ID_548761152" title="Distribution mode">
	      <desc0>Dual distribution with a commercial version along with a functionally limited free one</desc0>
	      <desc1>Subparts are only available under a proprietary license (core, plugins...)</desc1>
	      <desc2>Completely open and free distribution</desc2>
	      <comment/>
	      <score/>
	    </element>
	  </element>
	  <element name="industrializedsolution" title="Industrialization">
	    <desc>Industrialization level of the project</desc>
	    <element name="services" title="Services">
	      <desc>Existing service offerings (support, training, audit...)</desc>
	      <desc0>No service offering identified</desc0>
	      <desc1>Limited service offering (geographically, to a single language, to a single supplier or without warranty</desc1>
	      <desc2>Rich ecosystem of services provided by multiple suppliers, with guaranteed results</desc2>
	      <comment/>
	      <score/>
	    </element>
	    <element name="documentation" title="Documentation">
	      <desc0>No user documentation</desc0>
	      <desc1>Documentation exists but is partly obsolete or restricted to one language or to few details</desc1>
	      <desc2>Documentation up to date, translated and possibly adapted to several target readers (enduser, sysadmin, manager...)</desc2>
	      <comment/>
	      <score/>
	    </element>
	    <element name="qualityassurance" title="Quality assurance">
	      <desc>QA process</desc>
	      <desc0>No QA process identified</desc0>
	      <desc1>Existing QA processes, but they are not formalized or equipped</desc1>
	      <desc2>QA process based on standard tools and methodologies</desc2>
	      <comment/>
	      <score/>
	    </element>
	    <element name="modificationofsourcecode" title="Source code modification">
	      <desc0>No convenient way to propose source code modifications</desc0>
	      <desc1>Tools are provided to access and modify the code (eg SCM, forge...) but are not really used by core team to develop the product</desc1>
	      <desc2>The contributing process is well defined, exposed and respected, it is based on clearly defined roles</desc2>
	      <comment/>
	      <score/>
	    </element>
	  </element>
	</section>
      </xsl:when>
      <xsl:when test="./@ID='metadata'"></xsl:when>
      <xsl:when test="@ID = 'authors'">
	<authors>
	  <xsl:apply-templates select="node"/>
	</authors>
      </xsl:when>
      <xsl:when test="@TEXT = 'author' and ancestor::node/@ID = 'authors'">
	<author>
	  <xsl:apply-templates select="node"/>
	</author>
      </xsl:when>
      <xsl:when test="@TEXT = 'name' and ancestor::node/ancestor::node/@ID = 'authors'">
	  <name><xsl:value-of select="child::node/@TEXT"/></name>
      </xsl:when>
      <xsl:when test="@TEXT = 'email' and ancestor::node/ancestor::node/@ID = 'authors'">
	  <email><xsl:value-of select="child::node/@TEXT"/></email>
      </xsl:when>
      <xsl:when test="./@BACKGROUND_COLOR='#ffcccc'"></xsl:when>
      <xsl:when test="./@STYLE='bubble'">
	<desc><xsl:value-of select="@TEXT"/></desc>
      </xsl:when>
      <xsl:when test="child::icon">
      	<xsl:if test="icon/@BUILTIN = 'full-0'"><desc0><xsl:value-of select="@TEXT"/></desc0></xsl:if>
      	<xsl:if test="icon/@BUILTIN = 'full-1'"><desc1><xsl:value-of select="@TEXT"/></desc1></xsl:if>
      	<xsl:if test="icon/@BUILTIN = 'full-2'"><desc2><xsl:value-of select="@TEXT"/></desc2></xsl:if>
      </xsl:when>
      <xsl:when test="count(ancestor::node()) = 3">
        <section name="{@ID}" title="{@TEXT}">
          <xsl:apply-templates select="attribute"/>
	  <xsl:apply-templates select="node"/>
         </section>
      </xsl:when>
      <xsl:otherwise>
        <element name="{@ID}" title="{@TEXT}">
	  <xsl:apply-templates select="attribute"/>
	  <xsl:apply-templates select="node"/>
	  <xsl:if test="child::node/icon">
	  	<comment></comment>
	  	<score></score>
	  </xsl:if>
        </element>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="attribute">
    <xsl:element name="{@NAME}">
      <xsl:value-of select="@VALUE"/>
    </xsl:element>
  </xsl:template>
  
</xsl:stylesheet>