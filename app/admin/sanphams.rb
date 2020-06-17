ActiveAdmin.register Sanpham do
  permit_params :masanpham,:loaisanpham_id ,:thuonghieu_id ,:tensanpham,:giaban,:giakhuyenmai ,:gioitinh,:mota
  index do
    selectable_column

    column :masanpham
    column :loaisanpham_id
    column :thuonghieu_id
    column :tensanpham
    column :giaban
    column :giakhuyenmai
    column :gioitinh 
    column :mota
  
    actions
  end
  filter :masanpham
  filter :loaisanpham_id
  filter :thuonghieu_id
  filter :tensanpham
  filter :giaban
  filter :giakhuyenmai
  filter :gioitinh

  form do |f|
    f.inputs do
      f.input :masanpham , label: "Mã sản phẩm"
      f.input :loaisanpham_id, label: 'Loại sản Phẩm', as: :select, :collection => Loaisanpham.all.map{|loaisp| [loaisp.tenloai, loaisp.maloai]}
      f.input :thuonghieu_id, label: 'Thương hiệu', as: :select, :collection => Thuonghieu.all.map{|thuonghieu| [thuonghieu.tenthuonghieu, thuonghieu.mathuonghieu]}
      f.input :tensanpham, label: "Tên sản phẩm"
      f.input :giaban , label: "Giá bán"
      f.input :giakhuyenmai, label: "Giá Khuyến mãi"
      f.input :gioitinh, label: "Giới Tính", as: :select, :collection => ["Nam", "Nữ"].map{|gender| [gender]}
      f.input :mota , label: "Mô tả"
    end
    f.actions
  end
  
end