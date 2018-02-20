# 官方教程
[scopes](http://guides.rubyonrails.org/active_record_querying.html#scopes)

# default_scope和unscoped
default_scope 定义一个model默认的查询语句

unscoped是查询所有的内容, 把default_scope移除以后的查询。

~~~
Client.unscoped.all
# SELECT "clients".* FROM "clients"
 
Client.where(published: false).unscoped.all
# SELECT "clients".* FROM "clients"
~~~

# pluck
直接生成文本，不parse activerecord object


~~~ruby
Question.pluck(:question_text, :course_id)
#=> [["Text1", 16], ["Text2", 23], ...]


Appointment.where(id: Charge.pluck(:appointment_id))
# this is the same as Appointment.where(id: [1,2,3,4,5])
~~~

# 双重join
scope :qiaqia, ->{verified.joins(:reward => :reward_source).where(:reward_sources => {name:"洽洽无限量"})}

# merge

~~~
User.active.merge(User.inactive)
# SELECT "users".* FROM "users" WHERE "users"."state" = 'inactive'
~~~

# 链式调用
Scope方法支持链式调用，这样我们就能把常用的查询条件组合到一起调用了。

~~~ruby
class Product < ActiveRecord::Base
  scope :hot, -> { where(hot: true) }
  scope :top, -> { where(top: true) }
end

Product.top.hot.where(name: "T-Shirt")
~~~

# 参数传递
~~~
class Post < ActiveRecord::Base
  scope :created_before, ->(time) { where("created_at < ?", time) }
end

Post.created_before(Time.zone.now)
~~~


当有的查询条件需要动态参数的时候，可以采用上面的方法，不过Rails Guides 中推荐如果需要动态参数的时候，不如直接使用类方法，因为有了参数的参与，scope的行为与方法更加接近了，索性不如直接使用方法来定义。

# 合并scope

~~~ruby
class User < ActiveRecord::Base
  scope :active, -> { where state: 'active' }
  scope :inactive, -> { where state: 'inactive' }
end

User.active.inactive
# SELECT "users".* FROM "users" WHERE "users"."state" = 'active' AND "users"."state" = 'inactive'

User.active.where(state: 'finished')
# SELECT "users".* FROM "users" WHERE "users"."state" = 'active' AND "users"."state" = 'finished'
~~~


通过代码可以看出，将两个scope同时链式使用的时候，其对应的查询条件是以AND进行连接的，此外scope也可以直接拿来与where方法使用。

如果一个地方使用了某个 scope，而要在另一个地方把它的条件改变，可以使用 merge 方法：

~~~ruby
class Product < ActiveRecord::Base
  scope :active, -> { where state: 'active' }
  scope :inactive, -> { where state: 'inactive' }
end

Product.active.merge(User.inactive)
# SELECT "products".* FROM "products" WHERE "products"."state" = 'inactive'
~~~

# datatypes

:binary
:boolean
:date
:datetime
:decimal
:float
:integer
:bigint
:primary_key
:references
:string
:text
:time
:timestamp

if you use PostgreSQL, you can also take advantage of these

:hstore
:json
:jsonb
:array
:cidr_address
:ip_address
:mac_address
