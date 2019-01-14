<?xml version="1.0"?>
<recipe>
	<dependency mavenUrl="com.android.support:recyclerview-v7:28.0.0+"/>
    <instantiate from="root/src/app_package/BasicViewHolder.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewHolderName}ViewHolder.kt" />
	<#if isHeader == true>
	<instantiate from="root/src/app_package/BasicHeaderViewHolder.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewHolderName}HeaderViewHolder.kt" />
	</#if>
	<#if isFooter == true>
	<instantiate from="root/src/app_package/BasicFooterViewHolder.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewHolderName}FooterViewHolder.kt" />
	</#if>
				   
	<open file="${srcOut}/${viewHolderName}ViewHolder.kt"/>
	<#if isHeader == true>
	<open file="${srcOut}/${viewHolderName}HeaderViewHolder.kt"/>
	</#if>
	<#if isFooter == true>
	<open file="${srcOut}/${viewHolderName}FooterViewHolder.kt"/>
	</#if>
</recipe>