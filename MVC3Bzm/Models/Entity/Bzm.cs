// 
//  ____  _     __  __      _        _ 
// |  _ \| |__ |  \/  | ___| |_ __ _| |
// | | | | '_ \| |\/| |/ _ \ __/ _` | |
// | |_| | |_) | |  | |  __/ || (_| | |
// |____/|_.__/|_|  |_|\___|\__\__,_|_|
//
// Auto-generated from biezuomeng on 2013-05-17 14:09:55Z.
// Please visit http://code.google.com/p/dblinq2007/ for more information.
//
namespace MVC3Bzm.Models.Entity
{
	using System;
	using System.ComponentModel;
	using System.Data;
#if MONO_STRICT
	using System.Data.Linq;
#else   // MONO_STRICT
	using DbLinq.Data.Linq;
	using DbLinq.Vendor;
#endif  // MONO_STRICT
	using System.Data.Linq.Mapping;
	using System.Diagnostics;
	
	
	public partial class Bzm : DataContext
	{
		
		#region Extensibility Method Declarations
		partial void OnCreated();
		#endregion
		
		
		public Bzm(string connectionString) : 
				base(connectionString)
		{
			this.OnCreated();
		}
		
		public Bzm(string connection, MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			this.OnCreated();
		}
		
		public Bzm(IDbConnection connection, MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			this.OnCreated();
		}
		
		public Table<BZMAccess> BZMAccess
		{
			get
			{
				return this.GetTable<BZMAccess>();
			}
		}
		
		public Table<BZMAdMIn> BZMAdMIn
		{
			get
			{
				return this.GetTable<BZMAdMIn>();
			}
		}
		
		public Table<BZMArticle> BZMArticle
		{
			get
			{
				return this.GetTable<BZMArticle>();
			}
		}
		
		public Table<BZMComment> BZMComment
		{
			get
			{
				return this.GetTable<BZMComment>();
			}
		}
		
		public Table<BZMError> BZMError
		{
			get
			{
				return this.GetTable<BZMError>();
			}
		}
		
		public Table<BZMTag> BZMTag
		{
			get
			{
				return this.GetTable<BZMTag>();
			}
		}
	}
	
	#region Start MONO_STRICT
#if MONO_STRICT

	public partial class Bzm
	{
		
		public Bzm(IDbConnection connection) : 
				base(connection)
		{
			this.OnCreated();
		}
	}
	#region End MONO_STRICT
	#endregion
#else     // MONO_STRICT
	
	public partial class Bzm
	{
		
		public Bzm(IDbConnection connection) : 
				base(connection, new DbLinq.MySql.MySqlVendor())
		{
			this.OnCreated();
		}
		
		public Bzm(IDbConnection connection, IVendor sqlDialect) : 
				base(connection, sqlDialect)
		{
			this.OnCreated();
		}
		
		public Bzm(IDbConnection connection, MappingSource mappingSource, IVendor sqlDialect) : 
				base(connection, mappingSource, sqlDialect)
		{
			this.OnCreated();
		}
	}
	#region End Not MONO_STRICT
	#endregion
#endif     // MONO_STRICT
	#endregion
	
	[Table(Name="biezuomeng.bzm_access")]
	public partial class BZMAccess : System.ComponentModel.INotifyPropertyChanging, System.ComponentModel.INotifyPropertyChanged
	{
		
		private static System.ComponentModel.PropertyChangingEventArgs emptyChangingEventArgs = new System.ComponentModel.PropertyChangingEventArgs("");
		
		private string _acCbRowser;
		
		private System.DateTime _acCdAte;
		
		private string _acCdns;
		
		private string _acCip;
		
		private string _acCurl;
		
		private int _id;
		
		#region Extensibility Method Declarations
		partial void OnCreated();
		
		partial void OnAcCBrowserChanged();
		
		partial void OnAcCBrowserChanging(string value);
		
		partial void OnAcCDateChanged();
		
		partial void OnAcCDateChanging(System.DateTime value);
		
		partial void OnAcCDNSChanged();
		
		partial void OnAcCDNSChanging(string value);
		
		partial void OnAcCIPChanged();
		
		partial void OnAcCIPChanging(string value);
		
		partial void OnAcCURLChanged();
		
		partial void OnAcCURLChanging(string value);
		
		partial void OnIDChanged();
		
		partial void OnIDChanging(int value);
		#endregion
		
		
		public BZMAccess()
		{
			this.OnCreated();
		}
		
		[Column(Storage="_acCbRowser", Name="acc_browser", DbType="varchar(200)", AutoSync=AutoSync.Never)]
		[DebuggerNonUserCode()]
		public string AcCBrowser
		{
			get
			{
				return this._acCbRowser;
			}
			set
			{
				if (((_acCbRowser == value) 
							== false))
				{
					this.OnAcCBrowserChanging(value);
					this.SendPropertyChanging();
					this._acCbRowser = value;
					this.SendPropertyChanged("AcCBrowser");
					this.OnAcCBrowserChanged();
				}
			}
		}
		
		[Column(Storage="_acCdAte", Name="acc_date", DbType="timestamp", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public System.DateTime AcCDate
		{
			get
			{
				return this._acCdAte;
			}
			set
			{
				if ((_acCdAte != value))
				{
					this.OnAcCDateChanging(value);
					this.SendPropertyChanging();
					this._acCdAte = value;
					this.SendPropertyChanged("AcCDate");
					this.OnAcCDateChanged();
				}
			}
		}
		
		[Column(Storage="_acCdns", Name="acc_dns", DbType="varchar(50)", AutoSync=AutoSync.Never)]
		[DebuggerNonUserCode()]
		public string AcCDNS
		{
			get
			{
				return this._acCdns;
			}
			set
			{
				if (((_acCdns == value) 
							== false))
				{
					this.OnAcCDNSChanging(value);
					this.SendPropertyChanging();
					this._acCdns = value;
					this.SendPropertyChanged("AcCDNS");
					this.OnAcCDNSChanged();
				}
			}
		}
		
		[Column(Storage="_acCip", Name="acc_ip", DbType="varchar(50)", AutoSync=AutoSync.Never)]
		[DebuggerNonUserCode()]
		public string AcCIP
		{
			get
			{
				return this._acCip;
			}
			set
			{
				if (((_acCip == value) 
							== false))
				{
					this.OnAcCIPChanging(value);
					this.SendPropertyChanging();
					this._acCip = value;
					this.SendPropertyChanged("AcCIP");
					this.OnAcCIPChanged();
				}
			}
		}
		
		[Column(Storage="_acCurl", Name="acc_url", DbType="varchar(255)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string AcCURL
		{
			get
			{
				return this._acCurl;
			}
			set
			{
				if (((_acCurl == value) 
							== false))
				{
					this.OnAcCURLChanging(value);
					this.SendPropertyChanging();
					this._acCurl = value;
					this.SendPropertyChanged("AcCURL");
					this.OnAcCURLChanged();
				}
			}
		}
		
		[Column(Storage="_id", Name="id", DbType="int", IsPrimaryKey=true, IsDbGenerated=true, AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public int ID
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((_id != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		public event System.ComponentModel.PropertyChangingEventHandler PropertyChanging;
		
		public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			System.ComponentModel.PropertyChangingEventHandler h = this.PropertyChanging;
			if ((h != null))
			{
				h(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(string propertyName)
		{
			System.ComponentModel.PropertyChangedEventHandler h = this.PropertyChanged;
			if ((h != null))
			{
				h(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[Table(Name="biezuomeng.bzm_admin")]
	public partial class BZMAdMIn : System.ComponentModel.INotifyPropertyChanging, System.ComponentModel.INotifyPropertyChanged
	{
		
		private static System.ComponentModel.PropertyChangingEventArgs emptyChangingEventArgs = new System.ComponentModel.PropertyChangingEventArgs("");
		
		private string _adminBirth;
		
		private string _adminEmail;
		
		private string _adminHead;
		
		private string _adminMotto;
		
		private string _adminName;
		
		private string _adminPswd;
		
		private string _adminQq;
		
		private string _adminSex;
		
		private string _adminTel;
		
		private int _id;
		
		private string _remark;
		
		private EntitySet<BZMArticle> _bzmaRticle;
		
		#region Extensibility Method Declarations
		partial void OnCreated();
		
		partial void OnAdminBirthChanged();
		
		partial void OnAdminBirthChanging(string value);
		
		partial void OnAdminEmailChanged();
		
		partial void OnAdminEmailChanging(string value);
		
		partial void OnAdminHeadChanged();
		
		partial void OnAdminHeadChanging(string value);
		
		partial void OnAdminMottoChanged();
		
		partial void OnAdminMottoChanging(string value);
		
		partial void OnAdminNameChanged();
		
		partial void OnAdminNameChanging(string value);
		
		partial void OnAdminPswdChanged();
		
		partial void OnAdminPswdChanging(string value);
		
		partial void OnAdminQqChanged();
		
		partial void OnAdminQqChanging(string value);
		
		partial void OnAdminSexChanged();
		
		partial void OnAdminSexChanging(string value);
		
		partial void OnAdminTelChanged();
		
		partial void OnAdminTelChanging(string value);
		
		partial void OnIDChanged();
		
		partial void OnIDChanging(int value);
		
		partial void OnRemarkChanged();
		
		partial void OnRemarkChanging(string value);
		#endregion
		
		
		public BZMAdMIn()
		{
			_bzmaRticle = new EntitySet<BZMArticle>(new Action<BZMArticle>(this.BZMArticle_Attach), new Action<BZMArticle>(this.BZMArticle_Detach));
			this.OnCreated();
		}
		
		[Column(Storage="_adminBirth", Name="admin_Birth", DbType="varchar(100)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string AdminBirth
		{
			get
			{
				return this._adminBirth;
			}
			set
			{
				if (((_adminBirth == value) 
							== false))
				{
					this.OnAdminBirthChanging(value);
					this.SendPropertyChanging();
					this._adminBirth = value;
					this.SendPropertyChanged("AdminBirth");
					this.OnAdminBirthChanged();
				}
			}
		}
		
		[Column(Storage="_adminEmail", Name="admin_Email", DbType="varchar(200)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string AdminEmail
		{
			get
			{
				return this._adminEmail;
			}
			set
			{
				if (((_adminEmail == value) 
							== false))
				{
					this.OnAdminEmailChanging(value);
					this.SendPropertyChanging();
					this._adminEmail = value;
					this.SendPropertyChanged("AdminEmail");
					this.OnAdminEmailChanged();
				}
			}
		}
		
		[Column(Storage="_adminHead", Name="admin_Head", DbType="varchar(255)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string AdminHead
		{
			get
			{
				return this._adminHead;
			}
			set
			{
				if (((_adminHead == value) 
							== false))
				{
					this.OnAdminHeadChanging(value);
					this.SendPropertyChanging();
					this._adminHead = value;
					this.SendPropertyChanged("AdminHead");
					this.OnAdminHeadChanged();
				}
			}
		}
		
		[Column(Storage="_adminMotto", Name="admin_Motto", DbType="varchar(255)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string AdminMotto
		{
			get
			{
				return this._adminMotto;
			}
			set
			{
				if (((_adminMotto == value) 
							== false))
				{
					this.OnAdminMottoChanging(value);
					this.SendPropertyChanging();
					this._adminMotto = value;
					this.SendPropertyChanged("AdminMotto");
					this.OnAdminMottoChanged();
				}
			}
		}
		
		[Column(Storage="_adminName", Name="admin_Name", DbType="varchar(255)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string AdminName
		{
			get
			{
				return this._adminName;
			}
			set
			{
				if (((_adminName == value) 
							== false))
				{
					this.OnAdminNameChanging(value);
					this.SendPropertyChanging();
					this._adminName = value;
					this.SendPropertyChanged("AdminName");
					this.OnAdminNameChanged();
				}
			}
		}
		
		[Column(Storage="_adminPswd", Name="admin_Pswd", DbType="varchar(255)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string AdminPswd
		{
			get
			{
				return this._adminPswd;
			}
			set
			{
				if (((_adminPswd == value) 
							== false))
				{
					this.OnAdminPswdChanging(value);
					this.SendPropertyChanging();
					this._adminPswd = value;
					this.SendPropertyChanged("AdminPswd");
					this.OnAdminPswdChanged();
				}
			}
		}
		
		[Column(Storage="_adminQq", Name="admin_QQ", DbType="varchar(50)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string AdminQq
		{
			get
			{
				return this._adminQq;
			}
			set
			{
				if (((_adminQq == value) 
							== false))
				{
					this.OnAdminQqChanging(value);
					this.SendPropertyChanging();
					this._adminQq = value;
					this.SendPropertyChanged("AdminQq");
					this.OnAdminQqChanged();
				}
			}
		}
		
		[Column(Storage="_adminSex", Name="admin_Sex", DbType="varchar(10)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string AdminSex
		{
			get
			{
				return this._adminSex;
			}
			set
			{
				if (((_adminSex == value) 
							== false))
				{
					this.OnAdminSexChanging(value);
					this.SendPropertyChanging();
					this._adminSex = value;
					this.SendPropertyChanged("AdminSex");
					this.OnAdminSexChanged();
				}
			}
		}
		
		[Column(Storage="_adminTel", Name="admin_Tel", DbType="varchar(50)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string AdminTel
		{
			get
			{
				return this._adminTel;
			}
			set
			{
				if (((_adminTel == value) 
							== false))
				{
					this.OnAdminTelChanging(value);
					this.SendPropertyChanging();
					this._adminTel = value;
					this.SendPropertyChanged("AdminTel");
					this.OnAdminTelChanged();
				}
			}
		}
		
		[Column(Storage="_id", Name="id", DbType="int", IsPrimaryKey=true, IsDbGenerated=true, AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public int ID
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((_id != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		[Column(Storage="_remark", Name="remark", DbType="varchar(255)", AutoSync=AutoSync.Never)]
		[DebuggerNonUserCode()]
		public string Remark
		{
			get
			{
				return this._remark;
			}
			set
			{
				if (((_remark == value) 
							== false))
				{
					this.OnRemarkChanging(value);
					this.SendPropertyChanging();
					this._remark = value;
					this.SendPropertyChanged("Remark");
					this.OnRemarkChanged();
				}
			}
		}
		
		#region Children
		[Association(Storage="_bzmaRticle", OtherKey="ArticleAdminID", ThisKey="ID", Name="FK_ADMINID")]
		[DebuggerNonUserCode()]
		public EntitySet<BZMArticle> BZMArticle
		{
			get
			{
				return this._bzmaRticle;
			}
			set
			{
				this._bzmaRticle = value;
			}
		}
		#endregion
		
		public event System.ComponentModel.PropertyChangingEventHandler PropertyChanging;
		
		public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			System.ComponentModel.PropertyChangingEventHandler h = this.PropertyChanging;
			if ((h != null))
			{
				h(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(string propertyName)
		{
			System.ComponentModel.PropertyChangedEventHandler h = this.PropertyChanged;
			if ((h != null))
			{
				h(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
			}
		}
		
		#region Attachment handlers
		private void BZMArticle_Attach(BZMArticle entity)
		{
			this.SendPropertyChanging();
			entity.BZMAdMIn = this;
		}
		
		private void BZMArticle_Detach(BZMArticle entity)
		{
			this.SendPropertyChanging();
			entity.BZMAdMIn = null;
		}
		#endregion
	}
	
	[Table(Name="biezuomeng.bzm_article")]
	public partial class BZMArticle : System.ComponentModel.INotifyPropertyChanging, System.ComponentModel.INotifyPropertyChanged
	{
		
		private static System.ComponentModel.PropertyChangingEventArgs emptyChangingEventArgs = new System.ComponentModel.PropertyChangingEventArgs("");
		
		private int _articleAccess;
		
		private int _articleAdminID;
		
		private string _articleContent;
		
		private System.DateTime _articleDate;
		
		private int _articleTagID;
		
		private string _articleTitle;
		
		private int _id;
		
		private string _remark;
		
		private EntitySet<BZMComment> _bzmcOmment;
		
		private EntityRef<BZMAdMIn> _bzmaDMiN = new EntityRef<BZMAdMIn>();
		
		private EntityRef<BZMTag> _bzmtAg = new EntityRef<BZMTag>();
		
		#region Extensibility Method Declarations
		partial void OnCreated();
		
		partial void OnArticleAccessChanged();
		
		partial void OnArticleAccessChanging(int value);
		
		partial void OnArticleAdminIDChanged();
		
		partial void OnArticleAdminIDChanging(int value);
		
		partial void OnArticleContentChanged();
		
		partial void OnArticleContentChanging(string value);
		
		partial void OnArticleDateChanged();
		
		partial void OnArticleDateChanging(System.DateTime value);
		
		partial void OnArticleTagIDChanged();
		
		partial void OnArticleTagIDChanging(int value);
		
		partial void OnArticleTitleChanged();
		
		partial void OnArticleTitleChanging(string value);
		
		partial void OnIDChanged();
		
		partial void OnIDChanging(int value);
		
		partial void OnRemarkChanged();
		
		partial void OnRemarkChanging(string value);
		#endregion
		
		
		public BZMArticle()
		{
			_bzmcOmment = new EntitySet<BZMComment>(new Action<BZMComment>(this.BZMComment_Attach), new Action<BZMComment>(this.BZMComment_Detach));
			this.OnCreated();
		}
		
		[Column(Storage="_articleAccess", Name="article_access", DbType="int(20)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public int ArticleAccess
		{
			get
			{
				return this._articleAccess;
			}
			set
			{
				if ((_articleAccess != value))
				{
					this.OnArticleAccessChanging(value);
					this.SendPropertyChanging();
					this._articleAccess = value;
					this.SendPropertyChanged("ArticleAccess");
					this.OnArticleAccessChanged();
				}
			}
		}
		
		[Column(Storage="_articleAdminID", Name="article_AdminId", DbType="int", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public int ArticleAdminID
		{
			get
			{
				return this._articleAdminID;
			}
			set
			{
				if ((_articleAdminID != value))
				{
					this.OnArticleAdminIDChanging(value);
					this.SendPropertyChanging();
					this._articleAdminID = value;
					this.SendPropertyChanged("ArticleAdminID");
					this.OnArticleAdminIDChanged();
				}
			}
		}
		
		[Column(Storage="_articleContent", Name="article_Content", DbType="longtext", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string ArticleContent
		{
			get
			{
				return this._articleContent;
			}
			set
			{
				if (((_articleContent == value) 
							== false))
				{
					this.OnArticleContentChanging(value);
					this.SendPropertyChanging();
					this._articleContent = value;
					this.SendPropertyChanged("ArticleContent");
					this.OnArticleContentChanged();
				}
			}
		}
		
		[Column(Storage="_articleDate", Name="article_Date", DbType="timestamp", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public System.DateTime ArticleDate
		{
			get
			{
				return this._articleDate;
			}
			set
			{
				if ((_articleDate != value))
				{
					this.OnArticleDateChanging(value);
					this.SendPropertyChanging();
					this._articleDate = value;
					this.SendPropertyChanged("ArticleDate");
					this.OnArticleDateChanged();
				}
			}
		}
		
		[Column(Storage="_articleTagID", Name="article_TagId", DbType="int", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public int ArticleTagID
		{
			get
			{
				return this._articleTagID;
			}
			set
			{
				if ((_articleTagID != value))
				{
					this.OnArticleTagIDChanging(value);
					this.SendPropertyChanging();
					this._articleTagID = value;
					this.SendPropertyChanged("ArticleTagID");
					this.OnArticleTagIDChanged();
				}
			}
		}
		
		[Column(Storage="_articleTitle", Name="article_Title", DbType="varchar(255)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string ArticleTitle
		{
			get
			{
				return this._articleTitle;
			}
			set
			{
				if (((_articleTitle == value) 
							== false))
				{
					this.OnArticleTitleChanging(value);
					this.SendPropertyChanging();
					this._articleTitle = value;
					this.SendPropertyChanged("ArticleTitle");
					this.OnArticleTitleChanged();
				}
			}
		}
		
		[Column(Storage="_id", Name="id", DbType="int", IsPrimaryKey=true, IsDbGenerated=true, AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public int ID
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((_id != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		[Column(Storage="_remark", Name="remark", DbType="varchar(255)", AutoSync=AutoSync.Never)]
		[DebuggerNonUserCode()]
		public string Remark
		{
			get
			{
				return this._remark;
			}
			set
			{
				if (((_remark == value) 
							== false))
				{
					this.OnRemarkChanging(value);
					this.SendPropertyChanging();
					this._remark = value;
					this.SendPropertyChanged("Remark");
					this.OnRemarkChanged();
				}
			}
		}
		
		#region Children
		[Association(Storage="_bzmcOmment", OtherKey="CommArticleID", ThisKey="ID", Name="FK_ARTICLE")]
		[DebuggerNonUserCode()]
		public EntitySet<BZMComment> BZMComment
		{
			get
			{
				return this._bzmcOmment;
			}
			set
			{
				this._bzmcOmment = value;
			}
		}
		#endregion
		
		#region Parents
		[Association(Storage="_bzmaDMiN", OtherKey="ID", ThisKey="ArticleAdminID", Name="FK_ADMINID", IsForeignKey=true)]
		[DebuggerNonUserCode()]
		public BZMAdMIn BZMAdMIn
		{
			get
			{
				return this._bzmaDMiN.Entity;
			}
			set
			{
				if (((this._bzmaDMiN.Entity == value) 
							== false))
				{
					if ((this._bzmaDMiN.Entity != null))
					{
						BZMAdMIn previousBZMAdMIn = this._bzmaDMiN.Entity;
						this._bzmaDMiN.Entity = null;
						previousBZMAdMIn.BZMArticle.Remove(this);
					}
					this._bzmaDMiN.Entity = value;
					if ((value != null))
					{
						value.BZMArticle.Add(this);
						_articleAdminID = value.ID;
					}
					else
					{
						_articleAdminID = default(int);
					}
				}
			}
		}
		
		[Association(Storage="_bzmtAg", OtherKey="ID", ThisKey="ArticleTagID", Name="FK_TAGS", IsForeignKey=true)]
		[DebuggerNonUserCode()]
		public BZMTag BZMTag
		{
			get
			{
				return this._bzmtAg.Entity;
			}
			set
			{
				if (((this._bzmtAg.Entity == value) 
							== false))
				{
					if ((this._bzmtAg.Entity != null))
					{
						BZMTag previousBZMTag = this._bzmtAg.Entity;
						this._bzmtAg.Entity = null;
						previousBZMTag.BZMArticle.Remove(this);
					}
					this._bzmtAg.Entity = value;
					if ((value != null))
					{
						value.BZMArticle.Add(this);
						_articleTagID = value.ID;
					}
					else
					{
						_articleTagID = default(int);
					}
				}
			}
		}
		#endregion
		
		public event System.ComponentModel.PropertyChangingEventHandler PropertyChanging;
		
		public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			System.ComponentModel.PropertyChangingEventHandler h = this.PropertyChanging;
			if ((h != null))
			{
				h(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(string propertyName)
		{
			System.ComponentModel.PropertyChangedEventHandler h = this.PropertyChanged;
			if ((h != null))
			{
				h(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
			}
		}
		
		#region Attachment handlers
		private void BZMComment_Attach(BZMComment entity)
		{
			this.SendPropertyChanging();
			entity.BZMArticle = this;
		}
		
		private void BZMComment_Detach(BZMComment entity)
		{
			this.SendPropertyChanging();
			entity.BZMArticle = null;
		}
		#endregion
	}
	
	[Table(Name="biezuomeng.bzm_comment")]
	public partial class BZMComment : System.ComponentModel.INotifyPropertyChanging, System.ComponentModel.INotifyPropertyChanged
	{
		
		private static System.ComponentModel.PropertyChangingEventArgs emptyChangingEventArgs = new System.ComponentModel.PropertyChangingEventArgs("");
		
		private int _commArticleID;
		
		private string _commContent;
		
		private System.DateTime _commDate;
		
		private string _commUser;
		
		private int _id;
		
		private string _remark;
		
		private EntityRef<BZMArticle> _bzmaRticle = new EntityRef<BZMArticle>();
		
		#region Extensibility Method Declarations
		partial void OnCreated();
		
		partial void OnCommArticleIDChanged();
		
		partial void OnCommArticleIDChanging(int value);
		
		partial void OnCommContentChanged();
		
		partial void OnCommContentChanging(string value);
		
		partial void OnCommDateChanged();
		
		partial void OnCommDateChanging(System.DateTime value);
		
		partial void OnCommUserChanged();
		
		partial void OnCommUserChanging(string value);
		
		partial void OnIDChanged();
		
		partial void OnIDChanging(int value);
		
		partial void OnRemarkChanged();
		
		partial void OnRemarkChanging(string value);
		#endregion
		
		
		public BZMComment()
		{
			this.OnCreated();
		}
		
		[Column(Storage="_commArticleID", Name="comm_articleId", DbType="int", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public int CommArticleID
		{
			get
			{
				return this._commArticleID;
			}
			set
			{
				if ((_commArticleID != value))
				{
					this.OnCommArticleIDChanging(value);
					this.SendPropertyChanging();
					this._commArticleID = value;
					this.SendPropertyChanged("CommArticleID");
					this.OnCommArticleIDChanged();
				}
			}
		}
		
		[Column(Storage="_commContent", Name="comm_Content", DbType="varchar(5000)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string CommContent
		{
			get
			{
				return this._commContent;
			}
			set
			{
				if (((_commContent == value) 
							== false))
				{
					this.OnCommContentChanging(value);
					this.SendPropertyChanging();
					this._commContent = value;
					this.SendPropertyChanged("CommContent");
					this.OnCommContentChanged();
				}
			}
		}
		
		[Column(Storage="_commDate", Name="comm_Date", DbType="timestamp", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public System.DateTime CommDate
		{
			get
			{
				return this._commDate;
			}
			set
			{
				if ((_commDate != value))
				{
					this.OnCommDateChanging(value);
					this.SendPropertyChanging();
					this._commDate = value;
					this.SendPropertyChanged("CommDate");
					this.OnCommDateChanged();
				}
			}
		}
		
		[Column(Storage="_commUser", Name="comm_User", DbType="varchar(50)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string CommUser
		{
			get
			{
				return this._commUser;
			}
			set
			{
				if (((_commUser == value) 
							== false))
				{
					this.OnCommUserChanging(value);
					this.SendPropertyChanging();
					this._commUser = value;
					this.SendPropertyChanged("CommUser");
					this.OnCommUserChanged();
				}
			}
		}
		
		[Column(Storage="_id", Name="id", DbType="int", IsPrimaryKey=true, IsDbGenerated=true, AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public int ID
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((_id != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		[Column(Storage="_remark", Name="remark", DbType="varchar(255)", AutoSync=AutoSync.Never)]
		[DebuggerNonUserCode()]
		public string Remark
		{
			get
			{
				return this._remark;
			}
			set
			{
				if (((_remark == value) 
							== false))
				{
					this.OnRemarkChanging(value);
					this.SendPropertyChanging();
					this._remark = value;
					this.SendPropertyChanged("Remark");
					this.OnRemarkChanged();
				}
			}
		}
		
		#region Parents
		[Association(Storage="_bzmaRticle", OtherKey="ID", ThisKey="CommArticleID", Name="FK_ARTICLE", IsForeignKey=true)]
		[DebuggerNonUserCode()]
		public BZMArticle BZMArticle
		{
			get
			{
				return this._bzmaRticle.Entity;
			}
			set
			{
				if (((this._bzmaRticle.Entity == value) 
							== false))
				{
					if ((this._bzmaRticle.Entity != null))
					{
						BZMArticle previousBZMArticle = this._bzmaRticle.Entity;
						this._bzmaRticle.Entity = null;
						previousBZMArticle.BZMComment.Remove(this);
					}
					this._bzmaRticle.Entity = value;
					if ((value != null))
					{
						value.BZMComment.Add(this);
						_commArticleID = value.ID;
					}
					else
					{
						_commArticleID = default(int);
					}
				}
			}
		}
		#endregion
		
		public event System.ComponentModel.PropertyChangingEventHandler PropertyChanging;
		
		public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			System.ComponentModel.PropertyChangingEventHandler h = this.PropertyChanging;
			if ((h != null))
			{
				h(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(string propertyName)
		{
			System.ComponentModel.PropertyChangedEventHandler h = this.PropertyChanged;
			if ((h != null))
			{
				h(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[Table(Name="biezuomeng.bzm_error")]
	public partial class BZMError : System.ComponentModel.INotifyPropertyChanging, System.ComponentModel.INotifyPropertyChanged
	{
		
		private static System.ComponentModel.PropertyChangingEventArgs emptyChangingEventArgs = new System.ComponentModel.PropertyChangingEventArgs("");
		
		private System.DateTime _date;
		
		private string _error;
		
		private int _id;
		
		#region Extensibility Method Declarations
		partial void OnCreated();
		
		partial void OnDateChanged();
		
		partial void OnDateChanging(System.DateTime value);
		
		partial void OnErrorChanged();
		
		partial void OnErrorChanging(string value);
		
		partial void OnIDChanged();
		
		partial void OnIDChanging(int value);
		#endregion
		
		
		public BZMError()
		{
			this.OnCreated();
		}
		
		[Column(Storage="_date", Name="date", DbType="timestamp", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public System.DateTime Date
		{
			get
			{
				return this._date;
			}
			set
			{
				if ((_date != value))
				{
					this.OnDateChanging(value);
					this.SendPropertyChanging();
					this._date = value;
					this.SendPropertyChanged("Date");
					this.OnDateChanged();
				}
			}
		}
		
		[Column(Storage="_error", Name="error", DbType="varchar(2000)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string Error
		{
			get
			{
				return this._error;
			}
			set
			{
				if (((_error == value) 
							== false))
				{
					this.OnErrorChanging(value);
					this.SendPropertyChanging();
					this._error = value;
					this.SendPropertyChanged("Error");
					this.OnErrorChanged();
				}
			}
		}
		
		[Column(Storage="_id", Name="ID", DbType="int", IsPrimaryKey=true, IsDbGenerated=true, AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public int ID
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((_id != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		public event System.ComponentModel.PropertyChangingEventHandler PropertyChanging;
		
		public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			System.ComponentModel.PropertyChangingEventHandler h = this.PropertyChanging;
			if ((h != null))
			{
				h(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(string propertyName)
		{
			System.ComponentModel.PropertyChangedEventHandler h = this.PropertyChanged;
			if ((h != null))
			{
				h(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[Table(Name="biezuomeng.bzm_tag")]
	public partial class BZMTag : System.ComponentModel.INotifyPropertyChanging, System.ComponentModel.INotifyPropertyChanged
	{
		
		private static System.ComponentModel.PropertyChangingEventArgs emptyChangingEventArgs = new System.ComponentModel.PropertyChangingEventArgs("");
		
		private int _id;
		
		private string _remark;
		
		private string _tagName;
		
		private string _tagNum;
		
		private EntitySet<BZMArticle> _bzmaRticle;
		
		#region Extensibility Method Declarations
		partial void OnCreated();
		
		partial void OnIDChanged();
		
		partial void OnIDChanging(int value);
		
		partial void OnRemarkChanged();
		
		partial void OnRemarkChanging(string value);
		
		partial void OnTagNameChanged();
		
		partial void OnTagNameChanging(string value);
		
		partial void OnTagNumChanged();
		
		partial void OnTagNumChanging(string value);
		#endregion
		
		
		public BZMTag()
		{
			_bzmaRticle = new EntitySet<BZMArticle>(new Action<BZMArticle>(this.BZMArticle_Attach), new Action<BZMArticle>(this.BZMArticle_Detach));
			this.OnCreated();
		}
		
		[Column(Storage="_id", Name="id", DbType="int", IsPrimaryKey=true, IsDbGenerated=true, AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public int ID
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((_id != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		[Column(Storage="_remark", Name="remark", DbType="varchar(255)", AutoSync=AutoSync.Never)]
		[DebuggerNonUserCode()]
		public string Remark
		{
			get
			{
				return this._remark;
			}
			set
			{
				if (((_remark == value) 
							== false))
				{
					this.OnRemarkChanging(value);
					this.SendPropertyChanging();
					this._remark = value;
					this.SendPropertyChanged("Remark");
					this.OnRemarkChanged();
				}
			}
		}
		
		[Column(Storage="_tagName", Name="tag_Name", DbType="varchar(255)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string TagName
		{
			get
			{
				return this._tagName;
			}
			set
			{
				if (((_tagName == value) 
							== false))
				{
					this.OnTagNameChanging(value);
					this.SendPropertyChanging();
					this._tagName = value;
					this.SendPropertyChanged("TagName");
					this.OnTagNameChanged();
				}
			}
		}
		
		[Column(Storage="_tagNum", Name="tag_Num", DbType="varchar(255)", AutoSync=AutoSync.Never, CanBeNull=false)]
		[DebuggerNonUserCode()]
		public string TagNum
		{
			get
			{
				return this._tagNum;
			}
			set
			{
				if (((_tagNum == value) 
							== false))
				{
					this.OnTagNumChanging(value);
					this.SendPropertyChanging();
					this._tagNum = value;
					this.SendPropertyChanged("TagNum");
					this.OnTagNumChanged();
				}
			}
		}
		
		#region Children
		[Association(Storage="_bzmaRticle", OtherKey="ArticleTagID", ThisKey="ID", Name="FK_TAGS")]
		[DebuggerNonUserCode()]
		public EntitySet<BZMArticle> BZMArticle
		{
			get
			{
				return this._bzmaRticle;
			}
			set
			{
				this._bzmaRticle = value;
			}
		}
		#endregion
		
		public event System.ComponentModel.PropertyChangingEventHandler PropertyChanging;
		
		public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			System.ComponentModel.PropertyChangingEventHandler h = this.PropertyChanging;
			if ((h != null))
			{
				h(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(string propertyName)
		{
			System.ComponentModel.PropertyChangedEventHandler h = this.PropertyChanged;
			if ((h != null))
			{
				h(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
			}
		}
		
		#region Attachment handlers
		private void BZMArticle_Attach(BZMArticle entity)
		{
			this.SendPropertyChanging();
			entity.BZMTag = this;
		}
		
		private void BZMArticle_Detach(BZMArticle entity)
		{
			this.SendPropertyChanging();
			entity.BZMTag = null;
		}
		#endregion
	}
}
