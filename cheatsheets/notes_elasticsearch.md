# 查看当前节点的所有Index, Index是单个数据库的同义词，是es数据管理的顶层单位
http://localhost:9200/_cat/indices?v


# Documnent, index的下一个单位就是Document, 一条Document对应一个记录

#Type, Document可以分组，这种分组就叫Type, 它是虚拟的逻辑分组，用来过滤Document
curl 'localhost:9200/_mapping?pretty=true' # 列出所有的Type

# 数据查询
使用 GET 方法，直接请求/Index/Type/_search，就会返回所有记录。

# 查看记录
向/Index/Type/Id发出 GET 请求，就可以查看这条记录。

# 查看_cat下面所有的功能
http://localhost:9200/_cat

# 查看系统所有index状态
curl -XGET 'localhost:9200/_stats?pretty'

# 查看index1, index2的状态
calhost:9200/index1,index2/_stats?pretty'

# 查看node状态
http://localhost:9200/_nodes?pretty

# 通配符查询
elasticsearch还支持使用统配的风格，如使用*匹配任意字符

~~~
curl -XPOST localhost:9200/test*/_search?pretty -d '{"query":{"match_all":{}}}'
~~~

最后可以通过add(+)添加一个索引，使用remove(-)去掉一个索引
~~~
curl -XPOST localhost:9200/-logstash*,+test*/_search?pretty -d '{"query":{"match_all":{}}}'
~~~

# mirage插件可以辅助写es查询语句
[appbaseio/mirage](https://github.com/appbaseio/mirage)

# Rest API 常用用法
[这篇博客](http://www.cnblogs.com/xing901022/p/5303740.html) 对Elasticsearch Rest API的参数使用有详细的解释

# Elasticsearch聚合
[ES Metric初探](http://www.cnblogs.com/xing901022/p/4944043.html)

# Count
GET /shakespeare/_count
