//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebAppQuanLyBongDa.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class LOAISAN
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LOAISAN()
        {
            this.SANs = new HashSet<SAN>();
        }
    
        public int MALOAISAN { get; set; }
        public string TENLOAISAN { get; set; }
        public Nullable<int> GIATIEN { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SAN> SANs { get; set; }
    }
}
