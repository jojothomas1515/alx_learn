#!/usr/bin/ruby

# Start writting your code here
class Email
    def initialize(subject, headers)
        @subject = subject
        @headers = headers
    end

    def info()
        width = :subject.length
        puts("#{"Date:".ljust(width+1)}  #{date}")
        puts("#{"From:".ljust(width+1)}  #{from}")
        puts("#{"Subject:".ljust(width+1)}  #{subject}")
    end

    def subject
        @subject
     end

    def date
        @headers[:date]
    end

    def from
        @headers[:from]
    end
end

class Mailbox
    def initialize(name, emails)
        @name = name
        @emails = emails
    end

    def all()
        emails.each do |x|
            x.info()
            puts
        end
    end
    
    def name
        @name
    end

    def emails
        @emails
    end
end

class MailboxTextFormatter
    # fill in this class body
    def initialize(mailbox)
        @mailbox = mailbox
    end
    
    def format
        puts "Mailbox: #{mailbox.name}"
        puts "\n"
        dwidth = mailbox.emails.max_by {|x| x.date.length}.date.length
        fwidth = mailbox.emails.max_by {|x| x.from.length}.from.length
        swidth = mailbox.emails.max_by {|x| x.subject.length}.subject.length

        str_li = mailbox.emails.map do |email|
           "| #{email.date.ljust(dwidth)} | #{email.from.ljust(fwidth)} | #{email.subject.ljust(swidth)} |"
        end
        str = "+#{'-'*(dwidth+2)}+#{'-'*(fwidth+2)}+#{'-'*(swidth+2)}+\n"+
              "| #{'Date'.ljust(dwidth)} | #{'From'.ljust(fwidth)} | #{'Subject'.ljust(swidth)} |\n"+
              "+ #{'-'*dwidth} + #{'-'*fwidth} + #{'-'*swidth} +\n"+
              "#{str_li.join("\n")}\n"+
              "+#{'-'*(dwidth+2)}+#{'-'*(fwidth+2)}+#{'-'*(swidth+2)}+"
    end

    def mailbox
        @mailbox
    end
end

#create email array as in the last exercise
emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous"}),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana"}),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane"}),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane"}),
  Email.new("Re: Homework thdsdjksdjsdkjis week", { :date => "2014-12-02", :from => "Ariane dosldjsoldkj"})
]
#create mailbox as before
mailbox = Mailbox.new("Ruby Study Group", emails)

formatter = MailboxTextFormatter.new(mailbox)
puts formatter.format

