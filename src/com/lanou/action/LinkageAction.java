package com.lanou.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by dllo on 17/10/19.
 */
public class LinkageAction extends ActionSupport {

    private String[] departments;

    private String department;

    private String[] nums;

    public String findDepartment(){

        String[] a = {"城市规划部","扫大街部","市场部"};

        departments = a;

        return SUCCESS;

    }

    public String findNum(){

        System.out.println(department);

        if(department.equals("城市规划部")){

            String[] a = {"城市部部长","城市部副部长"};

            nums = a;

        }

        if(department.equals("扫大街部")){

            String[] a = {"扫大街部部长","扫大街部副部长"};

            nums = a;

        }

        if(department.equals("市场部")){

            String[] a = {"市场部部长","市场部副部长"};

            nums = a;

        }

        return SUCCESS;

    }

    public String[] getDepartments() {
        return departments;
    }

    public void setDepartments(String[] departments) {
        this.departments = departments;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String[] getNums() {
        return nums;
    }

    public void setNums(String[] nums) {
        this.nums = nums;
    }
}
